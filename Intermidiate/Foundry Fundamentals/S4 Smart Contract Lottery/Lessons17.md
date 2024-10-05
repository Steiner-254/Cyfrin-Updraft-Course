# Implementing Chainlink Automation
- ***Focusing on implementing Chainlink Automation, this lesson teaches how to use \`checkUpkeep\` and \`performUpkeep\` functions for automated execution in Chainlink-powered smart contracts, enhancing their autonomy and efficiency.***

## Implementing Chainlink Automation
- Remember how Richard deleted the `performUpkeep` and `checkUpkeep` in the previous videos ... we gonna need those if we want to use the Chainlink Automation without interacting with Chainlink's front-end. We are engineers, we do not use front-ends!
- For this to work we need to refactor the `pickWinner` function. That functionality needs to be part of the `performUpkeep` if we want the Chainlink node to call it for us. But before that, let's create the `checkUpkeep` function:

```javascript
    /**
     * @dev This is the function that the Chainlink Keeper nodes call
     * they look for `upkeepNeeded` to return True.
     * the following should be true for this to return true:
     * 1. The time interval has passed between raffle runs.
     * 2. The lottery is open.
     * 3. The contract has ETH.
     * 4. There are players registered.
     * 5. Implicity, your subscription is funded with LINK.
     */
    function checkUpkeep(bytes memory /* checkData */) public view returns (bool upkeepNeeded, bytes memory /* performData */) {
        bool isOpen = RaffleState.OPEN == s_raffleState;
        bool timePassed = ((block.timestamp - s_lastTimeStamp) >= i_interval);
        bool hasPlayers = s_players.length > 0;
        bool hasBalance = address(this).balance > 0;
        upkeepNeeded = (timePassed && isOpen && hasBalance && hasPlayers);
        return (upkeepNeeded, "0x0");
    }
```

- Again, a lot of things up there, but fear not, we are going to explain everything.
- Going back to the [Chainlink Automation tutorial](https://docs.chain.link/chainlink-automation/guides/compatible-contracts) we see that `checkUpkeep` can use onchain data and a specified `checkData` parameter to perform complex calculations offchain and then send the result to `performUpkeep` as `performData`. But in our case, we don't need that `checkData` parameter. If a function expects an input, but we are not going to use it we can comment it out like this: `/* checkData */`. Ok, moving on, we'll make `checkUpkeep` public view and we match the expected returns of `(bool upkeepNeeded, bytes memory /* performData */)` commenting out that `performData` because we aren't going to use it.
- You are amazing! Keep going!
- Back to our raffle now, what are the conditions required to be true in order to commence the winner-picking process? We've placed the answer to this in the NATSPEC comments.

```javascript
     * 1. The time interval has passed between raffle runs.
     * 2. The lottery is open.
     * 3. The contract has ETH.
     * 4. There are players registered.
     * 5. Implicity, your subscription is funded with LINK.
```

- For points 1-3 we coded the following lines:

```javascript
    bool isOpen = RaffleState.OPEN == s_raffleState;
    bool timePassed = ((block.timestamp - s_lastTimeStamp) > i_interval);
    bool hasPlayers = s_players.length > 0;

    bool hasBalance = address(this).balance > 0;
```

- We check if the Raffle is in the open state, if enough time has passed and if there are players registered to the Raffle and if we have a prize to give out. All these need to be true for the winner-picking process to be able to run.
- In the end, we return the two elements required by the function declaration:

```javascript
return (upkeepNeeded, "0x0");
```

- `"0x0"` is just `0` in `bytes`, we ain't going to use this return anyway.
- Amazing!
- Chainlink nodes will call this `checkUpkeep` function. If the return `upkeepNeeded` is true, then they will call `performUpkeep` ... which in our case is the `pickWinner` function. Let's refactor it a little bit:

```javascript
    // 1. Get a random number
    // 2. Use the random number to pick a player
    // 3. Automatically called
    function performUpkeep(bytes calldata /* performData */) external override {
        (bool upkeepNeeded, ) = checkUpkeep("");
        // require(upkeepNeeded, "Upkeep not needed");
        if (!upkeepNeeded) {
            revert Raffle__UpkeepNotNeeded(
                address(this).balance,
                s_players.length,
                uint256(s_raffleState)
            );
        }
        s_raffleState = RaffleState.CALCULATING;
        uint256 requestId = i_vrfCoordinator.requestRandomWords(
            i_gasLane,
            i_subscriptionId,
            REQUEST_CONFIRMATIONS,
            i_callbackGasLimit,
            NUM_WORDS
        );
    }
```

- 
# Implementing the lottery state - Enum
- ***Discussion on using `enums` to manage different states in a raffle smart contract.***

## Introduction to the Concept of Enum
- In Solidity, `enum stands` for Enumerable. It is a user-defined data type that restricts a variable to have only one of the predefined values listed within the enum declaration. These predefined values are internally treated as unsigned integers, starting from 0 up to the count of elements minus one. Enums are useful for improving code readability and reducing potential errors by limiting the range of acceptable values for a variable. Read more about enums [here](https://docs.soliditylang.org/en/v0.8.26/types.html#enums).

## How can we use enums in our Project?
- Let's think about all the possible states of our Raffle. We deploy the contract and the raffle is started, the participants buy a ticket to register. Let's call this state `OPEN`. After this, we have a period when we need to wait at least 3 blocks for Chainlink VRF to send us the random number this means that we have at least 36 seconds (12 seconds/block) of time when our Raffle is processing the winner. Let's call this state `CALCULATING`.
- Let's code all these!
- Paste the following code between the errors definition section and the state variables section:

```solidity
    // Type declarations
    enum RaffleState {
        OPEN,           // 0
        CALCULATING     // 1
    }

    // Put this one in `Raffle related variables`

    RaffleState private s_raffleState;
```

- Amazing, let's default our raffle state to open inside the constructor.
- Add the following inside your constructor:

```javascript
s_raffleState = RaffleState.OPEN;
```

- Amazing! But what's the reason we did all this? Security! The thing we love the most!
- Chainlink VRF has an [interesting page](https://docs.chain.link/vrf/v2-5/security) where they provide Security Considerations you should always implement when interacting with their service. One of these is called `Don't accept bids/bets/inputs after you have made a randomness request`, in our case this translates to `Don't let people buy tickets while we calculate the final winner`. I strongly encourage you to give that whole page a read, it will save you a lot of headaches
- Let's implement this in the code:

```javascript
    function enterRaffle() external payable {
        if(msg.value < i_entranceFee) revert Raffle__NotEnoughEthSent();
        if(s_raffleState != RaffleState.OPEN) revert Raffle__RaffleNotOpen(); // If not open you don't enter.
        
        s_players.push(payable(msg.sender));
        emit EnteredRaffle(msg.sender);
    }
```

- Make sure to also define the new `Raffle__RaffleNotOpen()` error.
- Great, now let's also change the state of the Raffle when we commence the process of picking the winner.

```javascript
    function pickWinner() external {
        // check to see if enough time has passed
        if (block.timestamp - s_lastTimeStamp < i_interval) revert();

        s_raffleState = RaffleState.CALCULATING;
```

- 
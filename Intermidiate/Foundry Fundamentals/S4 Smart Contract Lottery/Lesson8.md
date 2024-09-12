# Implement the Chainlink VRF
- ***Tutorial on deploying and integrating Chainlink VRF in smart contracts for random number generation.***

## Getting Started with Chainlink VRF
- Continuing the previous lesson, let's integrate Chainlink VRF into our Raffle project.
- Coming back to our `pickWinner` function.

```javascript
    // 1. Get a random number
    // 2. Use the random number to pick a player
    // 3. Automatically called
    function pickWinner() external {
        // check to see if enough time has passed
        if (block.timestamp - s_lastTimeStamp < i_interval) revert();
    }
```

- Let's focus on points 1 and 2. In the previous lesson, we learned that we need to request a `randomWord` and Chainlink needs to callback one of our functions to answer the request. Let's copy the `requestId` line from the [Chainlink VRF docs](https://docs.chain.link/vrf/v2/subscription/examples/get-a-random-number#analyzing-the-contract) example inside our `pickWinner` function and start fixing the missing dependencies.

```javascript
    function pickWinner() external {
        // check to see if enough time has passed
        if (block.timestamp - s_lastTimeStamp < i_interval) revert();

        uint256 requestId = COORDINATOR.requestRandomWords(
            keyHash,
            s_subscriptionId,
            requestConfirmations,
            callbackGasLimit,
            numWords
        );
    }
```

- 
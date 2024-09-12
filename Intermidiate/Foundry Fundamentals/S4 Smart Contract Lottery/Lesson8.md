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

- You know the `keyHash`, `subId`, `requestConfirmations`, `callbackGasLimit` and `numWords` from our previous lesson.
- Ok, starting from the beginning what do we need?
1. We need to establish the fact that our `Raffle` contract is a consumer of Chainlink VRF;
2. We need to take care of the VRF Coordinator, define it as an immutable variable and give it a value in the constructor;

- Let's add the following imports:

```javascript
import {VRFCoordinatorV2Interface} from "chainlink/src/v0.8/vrf/interfaces/VRFCoordinatorV2Interface.sol";
import {VRFConsumerBaseV2} from "chainlink/src/v0.8/vrf/VRFConsumerBaseV2.sol";
```

- Let's make our contract inherit the `VRFConsumerBaseV2`:

```javascript
contract Raffle is VRFConsumerBaseV2
```

- Add a new immutable variable:

```javascript
    // Chainlink VRF related variables
    address immutable i_vrfCoordinator;
```

- I've divided the `Raffle` variables from the `Chainlink VRF` variables to keep the contract tidy.
- Adjust the constructor to accommodate all the new variables and imports:

```javascript
    constructor(uint256 entranceFee, uint256 interval, address vrfCoordinator) {
        i_entranceFee = entranceFee;
        i_interval = interval;
        s_lastTimeStamp = block.timestamp;

        i_vrfCoordinator = vrfCoordinator;
    }
```

- For our imports to work we need to install the Chainlink library, and run the following command in your terminal:

```javascript
forge install smartcontractkit/chainlink@42c74fcd30969bca26a9aadc07463d1c2f473b8c --no-commit
```

- Now run `forge build`. **It will fail**, it should fail because we didn't define a ton of variables. But what matters at this point is how it fails! We need it to fail with the following error:

```javascript
Error: 
Compiler run failed:
Error (7576): Undeclared identifier.

  --> src/Raffle.sol:53:8:
```

- If it doesn't fail with that error but fails with this error then we need to do additional things:

```javascript
Error: 
Compiler run failed:

Error (6275): Source "lib/chainlink/contracts/contracts/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol" not found: File not found. Searched the following locations:
```

- If you got the error above, then `forge` was not able to find out the contracts we imported. Run the following command in your terminal:

```javascript
forge remappings>remappings.txt
```

- This will create a new file that contains your project remappings:

```javascript
chainlink/=lib/chainlink/contracts/

forge-std/=lib/forge-std/src/
```

- This is to be read as follows: `chainlink/` in your imports becomes `lib/chainlink/contracts/` behind the stage. We need to make sure that if we apply that change to our import the resulting **PATH is correct**.
- `chainlink/src/v0.8/vrf/VRFConsumerBaseV2.sol` becomes `lib/chainlink/contracts/src/v0.8/vrf/VRFConsumerBaseV2.sol`, which is correct. Sometimes some elements of the PATH are either missing or doubled, as follows:

```javascript
lib/chainlink/contracts/contracts/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol
```

OR

```javascript
lib/chainlink/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol
```

- 
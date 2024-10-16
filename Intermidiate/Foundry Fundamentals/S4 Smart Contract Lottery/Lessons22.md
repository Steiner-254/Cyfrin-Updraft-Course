# Deploy Script
- ***A comprehensive guide to deploying a Chainlink VRF Raffle smart contract - This lesson covers how to set up your code base for deploying a Chainlink VRF Raffle smart contract using Foundry, including creating new files, adding a pragma, importing the necessary dependencies,***

- Let's begin by creating a new file in the `/script` directory called `DeployRaffle.sol` and importing the `Raffle` contract.

```javascript
pragma solidity ^0.8.19;
import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
```

>> 🗒️ **NOTE**:br

>> There are two ways to import files in Solidity: using a direct path or a relative path. In this example, we are using a relative path, where the `Raffle.sol` file is inside the `src` directory but one level up (`..`) from the current file's location.

### The `deployContract` Function
- Next, let's define a function called `deployContract` to handle the **deployment process**. This function will be similar to the one we used in the `FundMe` contract.

```javascript
contract DeployRaffle is Script {
    function run() external {
        deployContract();
    }

    function deployContract() internal returns (Raffle, HelperConfig) {
        // Implementation will go here
    }
}
```

- To deploy our contract, we need various parameters required by the `Raffle` contract, such as `entranceFee`, `interval`, `vrfCoordinator`, `gasLane`, `subscriptionId`, and `callbackGasLimit`. The values for these parameters will vary _depending on the blockchain network we deploy to_. Therefore, we should create a `HelperConfig` file to specify these values based on the target deployment network.

### The `HelperConfig.s.sol` Contract
- 
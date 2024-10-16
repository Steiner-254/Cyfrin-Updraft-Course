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
- To retrieve the correct networ configuration, we can create a new file in the same directory called `HelperConfig.s.sol` and define a **Network Configuration Structure**:

```javascript
contract HelperConfig is Script {
    struct NetworkConfig {
        uint256 entranceFee;
        uint256 interval;
        address vrfCoordinator;
        bytes32 gasLane;
        uint32 callbackGasLimit;
        uint256 subscriptionId;
    }
}
```

- We'll then define two functions that return the _network-specific configuration_. We'll set up these functions for Sepolia and a local network.

```javascript
function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
    return NetworkConfig({
        entranceFee: 0.01 ether, //1e16
        interval: 30, // 30 seconds
        vrfCoordinator: 0x9DdfaCa8183c41ad55329BdeeD9F6A8d53168B1B,
        gasLane: 0x787d74caea10b2b357790d5b5247c2f63d1d91572a9846f780606e4d953677ae,
        callbackGasLimit: 500000, //500,000 gas
        subscriptionId: 0
    });
}

function getLocalConfig() public pure returns (NetworkConfig memory) {
    return NetworkConfig({
        entranceFee: 0.01 ether,
        interval: 30, // 30 seconds
        vrfCoordinator: address(0),
        gasLane: "",
        callbackGasLimit: 500000,
        subscriptionId: 0
    });
}
```

- We will then create an abstract contract `CodeConstants` where we define some network IDs. The `HelperConfig` contract will be able to use them later through ineritance.

```javascript
abstract contract CodeConstants {
    uint256 public constant ETH_SEPOLIA_CHAIN_ID = 11155111;
    uint256 public constant LOCAL_CHAIN_ID = 31337;
}
```

- 
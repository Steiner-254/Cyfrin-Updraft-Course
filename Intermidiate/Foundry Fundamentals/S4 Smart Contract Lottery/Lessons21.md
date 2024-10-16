# Test and deploy the lottery smart contract pt.1
- ***This lesson emphasizes the importance of testing and deploying smart contracts efficiently. It guides through creating deploy scripts and testing them on various networks, ensuring reliable and secure deployment of lottery contracts.***

## Deploying and testing our lottery
- Now that we've got all the prerequisites for deployment let's proceed in deploying the raffle.
- Let's open the `DeployRaffle.s.sol` and use our new tools.
- First, import the newly created HelperConfig.

```javascript
import {HelperConfig} from "./HelperConfig.s.sol";
```

- Then, modify the run function:

```javascript
    function run() external returns (Raffle, HelperConfig) {
        HelperConfig helperConfig = new HelperConfig(); // This comes with our mocks!
        (
            uint256 entranceFee;
            uint256 interval;
            address vrfCoordinator;
            bytes32 gasLane;
            uint64 subscriptionId;
            uint32 callbackGasLimit;
        ) = helperConfig.activeNetworkConfig();
```

- Great! Now that we have `deconstructed` the `NetworkConfig` we have all the variables we need to deploy::
```javascript
    vm.startBroadcast();
    Raffle raffle = new Raffle(
        entranceFee,
        interval,
        vrfCoordinator,
        gasLane,
        subscriptionId,
        callbackGasLimit
    )
    vm.stopBroadcast();
    return raffle;
```

- We use the `vm.startBroadcast` and `vm.stopBroadcast` commands to indicate that we are going to send a transaction. The transaction is the deployment of a new `Raffle` contract using the parameters we've obtained from the `HelperConfig`. In the end, we are returning the newly deployed contract.
- 
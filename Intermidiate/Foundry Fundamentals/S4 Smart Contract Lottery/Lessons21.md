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

- 
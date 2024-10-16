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
- This code is good on its own, but, we can make it better. For example, we need a `subscriptionId`. We can either obtain this through the front end as we've learned in a previous lesson, or we can get on programmatically. For now, we'll leave everything as is, but we will refactor this in the future.
- Before that, let's write some tests.
- Inside the `test` folder create two new folders called `intergration` and `unit`. Here we'll put our integration and unit tests. Inside the newly created `unit` folder create a file called `RaffleTest.t.sol`.
- Let's start writing the first test. You've already done this at least two times in this section. Try to do it on your own and come back when you get stuck.
- Your unit test should start like this:

```javascript
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {DeployRaffle} from "../../script/DeployRaffle.s.sol";
import {Raffle} from "../../src/Raffle.sol";
import {Test, console} from "forge-std/Test.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";

contract RaffleTest is Test {

}
```

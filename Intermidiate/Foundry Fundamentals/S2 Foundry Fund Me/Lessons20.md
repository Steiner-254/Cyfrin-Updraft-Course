# Create integration tests
- ***Explore the creation of integration tests for Solidity smart contracts. This lesson covers the setup and execution of integration tests, ensuring that contract functions interact correctly with other system parts. It includes practical examples and a guide for setting up a comprehensive test suite.***

## Writing a README.md
- A `README` is often the first item a visitor will see when visiting your repository. It serves as an introduction to your project, explaining what it does, why it is useful, and how users can get started with it. This initial impression can significantly impact whether someone decides to explore your project further.
- There are multiple templates available on the internet, but generally, yours should include at least a Title, a Project Overview, a Getting Started Guide and maybe some Contribution Guidelines (if you are building an open-source project).
- A README is your project's face to the world, and investing time in making it clear, comprehensive, and engaging can significantly impact your project's success and community engagement.

## Integration tests
- To seamlessly interact with our contract, we need to create a programmatic for using it's functions.
- Please create a new file called `Interactions.s.sol` in the `script` folder.
- In this file, we will create two scripts, one for funding and one for withdrawing.
- Each contract will contain one script, and for it to work each needs to inherit from the Script contract. Each contract will have a `run` function which shall be called by `forge script` when we run it.
- In order to properly interact with our `fundMe` contract we would want to interact only with the most recent deployment we made. This task is easily achieved using the `foundry-devops` library. Please install it using the following command:

```javascript
forge install Cyfrin/foundry-devops --no-commit
```

- Ok, now with that out of the way, let's work on our scripts.
- Put the following code in `Interactions.s.sol`:
```javascript
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";

contract FundFundMe is Script {
    uint256 SEND_VALUE = 0.1 ether;

    function fundFundMe(address mostRecentlyDeployed) public {
        vm.startBroadcast();
        FundMe(payable(mostRecentlyDeployed)).fund{value: SEND_VALUE}();
        vm.stopBroadcast();
        console.log("Funded FundMe with %s", SEND_VALUE);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("FundMe", block.chainid);
        fundFundMe(mostRecentlyDeployed);
    }
}

contract WithdrawFundMe is Script {
    function withdrawFundMe(address mostRecentlyDeployed) public {
        vm.startBroadcast();
        FundMe(payable(mostRecentlyDeployed)).withdraw();
        vm.stopBroadcast();
        console.log("Withdraw FundMe balance!");
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("FundMe", block.chainid);
        withdrawFundMe(mostRecentlyDeployed);
    }

}
```

- We've created a new function called `fundFundMe` which takes an address corresponding to the most recently deployed `FundMe` contract. Inside we start and stop a broadcast which sends a transaction calling the `fund` function from the `FundMe` contract. We've imported `console` to be able to log the amount that we funded as a confirmation. Inside the `run` function, we call `get_most_recent_deployment` from the DevOpsTools to get the address of the most recently deployed `FundMe` contract. We then use the newly acquired address as input for the `fundFundMe` function.
- The same thing is done for `WithdrawFundMe`.
- We could run this using the standard `forge script script/Interactions.s.sol:FundFundMe --rpc-url xyz --private-key etc ...` command, but writing that over and over again is not cool. We could test how this behaves using integration tests.
- Integration tests are crucial for verifying how your smart contract interacts with other contracts, external APIs, or decentralized oracles that provide data feeds. These tests help ensure your contract can properly receive and process data, send transactions to other contracts, and function as intended within the wider ecosystem.
- Before starting with the integration tests let's organize our tests into folders. Let's separate unit tests from integration tests by creating separate folders inside the `test` folder.
- Create two new folders called `integration` and `unit` inside the `test` folder. Move `FundMe.t.sol` inside the `unit` folder. Make sure to update `FundMe.t.sol` to accommodate this change.
- 
# Writing tests for your Solidity smart contract
- ***Detailed explanation on `writing` and `running` tests for Solidity smart contracts, including creating test files, understanding the setup function, and using console logs for debugging.***

## Testing
- `Testing` is a crucial step in your smart contract development journey, as the lack of tests can be a roadblock in the `deployment` stage or during a smart contract `audit`.
- So, buckle up as we unveil what separates the best developers from the rest: comprehensive, effective tests!
- Inside the `test` folder create a file called `FundMeTest.t.sol`. `.t.` is a naming convention of Foundry, please use it.
- The writing of a test contract shares the initial steps with the writing of a normal smart contract. We state the `SPDX-License-Identifier`, solidity version and a contract name:

```
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FundMeTest {


}
```

## Now the fun part!
- To be able to run `tests` using Foundry we need to import the set of smart contracts Foundry comes with that contains a lot of prebuilt functions that make our lives 10x easier.

```
import {Test} from "forge-std/Test.sol";
```

- We also make sure our test contract inherits what we just imported.

```
contract FundMeTest is Test{
```

- The next logical step in our testing process is deploying the `FundMe` contract. In the future, we will learn how to import our deployment scripts, but for now, let's do the deployments right in our test file.
- We do this inside the `setUp` function. This function is always the first to execute whenever we run our tests. Here we will perform all the prerequisite actions that are required before doing the actual testing, things like:
1. Deployments;
2. User addresses;
3. Balances;
4. Approvals;
5. And various other operations depending on what's required to initiate the tested contracts.

- 
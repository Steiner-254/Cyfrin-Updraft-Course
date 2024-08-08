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
- To be able to run tests using Foundry we need to import the set of smart contracts Foundry comes with that contains a lot of prebuilt functions that make our lives 10x easier.

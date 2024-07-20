# Immutability and constants

## Introduction
- In this lesson, we'll explore tools to `optimize gas usage` for variables that are set only once.

## Optimizing Variables
- The variables `owner` and `minimumUSD` are set one time and they never change their value: `owner` is assigned during contract creation, and minimumUSD is initialized at the beginning of the contract.

## Evaluating the FundMe Contract
- We can evaluate the gas used to create the contract by deploying it and observing the transaction in the terminal. In the original contract configuration, we spent almost 859,000 gas.

## Constant
- To reduce gas usage, we can use the keywords `constant` and `immutable`. These keywords ensure the variable values remain unchanged. For more information, you can refer to the [Solidity documentation](https://docs.soliditylang.org/en/v0.8.26/).
- We can apply these keywords to variables assigned once and never change. For values known at compile time, use the constant keyword. It prevents the variable from occupying a storage slot, making it cheaper and faster to read.
- Using the `constant` keyword can save approximately 19,000 gas, which is close to the cost of sending ETH between two accounts.
- 🗒️ NOTE

>> Naming conventions for constant are all caps with underscores in place of spaces (e.g., MINIMUM_USD).

- 🚧 WARNING

>> Converting the current ETH gas cost to USD, we see that when ETH is priced at 3000 USD, defining MINIMUM_USD as a constant costs 9 USD, nearly 1 USD more than its public equivalent.

## Immutable
- While `constant` variables are for values known at `compile time`, `immutable` can be used for variables set at `deployment time` that will not change. The naming convention for immutable variables is to add the prefix i_ to the variable name (e.g., i_owner).
- Comparing gas usage after making `owner` an `immutable` variable, we observe similar gas savings to the `constant` keyword.

- 💡 TIP

>> Don't focus too much on `gas optimization` at this early stage of learning.

## Conclusion
- In this lesson, we have explored the use of `constant` and `immutable` keywords in Solidity to optimize gas usage for variables that are set only once. Understanding how and when to use these keywords can significantly reduce gas costs, making your smart contracts more efficient.

## 🧑‍💻 Test yourself
1. 📕 Why a developer can choose to use `immutable` instead of `constant` for specific variables?
- Answer:

>> Developers use `immutable` for variables that need to be set once during deployment `(in the constructor)` but stay unchanged, unlike `constant`, which must be set at declaration.

2. 🧑‍💻 Invent one constant variable and one `immutable` variable that can be integrated into the current version of the `fundMe` contract.
- Answer:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    // Constant variable
    uint256 public constant MINIMUM_USD = 5e18;

    // Immutable variable
    address public immutable OWNER;

    // array list to get a list of funders sending funds to the contract
    address[] public funders;

    // mapping to look at how much each funder has sent
    mapping(address => uint256) public addressToAmountFunded;

    constructor() {
        // Setting the OWNER variable in the constructor
        OWNER = msg.sender;
    }

    function fund() public payable {
        require(msg.value.getConversionRate() >= MINIMUM_USD, "Didn't Send Enough Eth"); // 1e18 = 1ETH = 1000000000000000000 Wei = 1000000000 Gwei
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    // Function to withdraw funds, restricted to the owner
    function withdraw() public onlyOwner {
        // Logic to withdraw funds goes here
    }

    // Modifier to restrict access to the owner
    modifier onlyOwner {
        require(msg.sender == OWNER, "Not authorized");
        _;
    }
}
```

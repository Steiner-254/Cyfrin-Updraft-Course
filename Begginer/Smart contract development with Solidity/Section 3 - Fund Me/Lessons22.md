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

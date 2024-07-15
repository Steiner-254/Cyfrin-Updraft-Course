# Creating your own libraries

## Introduction
- In the previous lesson, we used the `getPrice()` function and `getConversionRate`. These methods can be reused multiple times for anyone working with `Price Feeds`. When a functionality can be commonly used, we can create a `library` to efficiently manage repeated parts of codes.

## Libraries
- Great examples of Libraries can be found in the [Solidity by example website](https://solidity-by-example.org/library/). Solidity libraries are similar to contracts but do not allow the declaration of any state variables and cannot receive ETH.
- 👀❗IMPORTANT

>> All functions in a library must be declared as internal and are embedded in the contract during compilation. If any function is not marked as such, the library cannot be embedded directly, but it must be deployed independently and then linked to the main contract.

- We can start by creating a new file called PriceConverter.sol, and replace the contract keyword with library.
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
library PriceConverter {}
```

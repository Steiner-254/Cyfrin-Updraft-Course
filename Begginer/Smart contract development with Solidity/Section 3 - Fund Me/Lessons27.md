# Recap

## Introduction
- In this second part of the `FundMe` section, we have covered the majority of` Solidity basics, including special functions, custom errors, immutable variables, modifiers, constructors, arrays, for loops, libraries`, and much more.

## Special Functions
- We have encountered the special functions `receive`, `fallback`, and `constructor`. These functions do not require the `function` keyword before their name. The receive function is triggered when Ether is sent to a contract and the data field is empty. The `fallback` function is triggered when data is sent with a transaction, but no matching function is found.

## Saving Gas
- To save gas, Solidity provides keywords like `constant` and `immutable` for variables that can only be set once:
```
uint constant minimumUSD = 50 * 1e18;
```

# Implementing the receive fallback

## Introduction
- In Solidity, if Ether is sent to a contract without a `receive` or `fallback` function, the transaction will be `rejected`, and the Ether will not be transferred. In this lesson, we'll explore how to handle this scenario effectively.

## receive and fallback functions
- `receive` and `fallback` are special functions triggered when users send Ether directly to the contract or call non-existent functions. These functions do not return anything and must be declared external.
- To illustrate, let's create a simple contract:
```
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackExample {
    uint256 public result;

    receive() external payable {
        result = 1;
    }

    fallback() external payable {
        result = 2;
    }
}
```

- In this contract, `result` is initialized to zero. When Ether is sent to the contract, the `receive` function is triggered, setting `result` to one. If a transaction includes **data** but the specified function *does not exist*, the `fallback` function will be triggered, setting `result` to two. For a comprehensive explanation, refer to [SolidityByExample](https://solidity-by-example.org/fallback/).

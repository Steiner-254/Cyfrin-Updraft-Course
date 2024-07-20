# Implementing the receive fallback

## Introduction
- In Solidity, if Ether is sent to a contract without a `receive` or `fallback` function, the transaction will be `rejected`, and the Ether will not be transferred. In this lesson, we'll explore how to handle this scenario effectively.

## receive and fallback functions
- `receive` and `fallback` are special functions triggered when users send Ether directly to the contract or call non-existent functions. These functions do not return anything and must be declared external.

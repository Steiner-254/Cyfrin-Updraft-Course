# Functions

## Introduction
- In the previous lesson, we added a store variable favoriteNumber within our first smart contract and explored different solidity types. In this lesson, you'll discover how to update and retrieve this number, while also learning about `functions, visibility, deployment, transactions, gas usage and variable scope`.

## Building the store function
- 📋 To store this variable, we need to implement a new function. In Solidity, functions - or methods, are portions of code designed to execute specific tasks within the overall codebase. We'll call this new function store, and it will be responsible for updating the favoriteNumber variable.

```
contract SimpleStorage {

    uint256 favoriteNumber; // a function will update this variable

    // the function will be written here
}
```

## 

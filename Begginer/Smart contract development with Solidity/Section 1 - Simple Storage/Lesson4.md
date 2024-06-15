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
- Functions are identified by the keyword function, followed by a name (e.g. store) and any additional parameters enclosed in rounded parentheses (). These parameters represent the values sent to our function. In this case, we inform the store function that we want to update favoriteNumber with some other value _favoriteNumber:

```
contract SimpleStorage {

    uint256 favoriteNumber; // storage variable: it's stored in a place called "Storage"

    function store(uint256 _favoriteNumber) public {
        // favorite number variable is updated with the value that is contained into `_favoriteNumber`
        favoriteNumber = _favoriteNumber;
    }
}
```

- The content of the function is placed within the curly brackets {}. The prefix _ before _favoriteNumber is used to emphasise that the local variable _favoriteNumber is a different variable from the state variable favoriteNumber. This helps prevent potential confusion when dealing with different variables with similar names in complex codebases.

## 

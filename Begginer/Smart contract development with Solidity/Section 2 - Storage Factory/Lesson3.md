# Deploying a contract from a contract

## Introduction
- This lesson covers the process of programmatically deploying a SimpleStorage contract and saving it to a storage or state variable. By the end of this lesson, you will have a comprehensive understanding of how one contract can seamlessly deploy and manage another one.

## Creating a new variable
- Following the format type-visibility-name, we can declare a new state variable of type SimpleStorage.

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StorageFactory {
    SimpleStorage public simpleStorage;

    function createSimplestorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}
```

- 👀❗IMPORTANT

>> `SimpleStorage on the left` and `simpleStorage on the righ`t are treated as entirely distinct entities due to their differing capitalization. `Simple Storage refers to the contract type` while `simpleStorage refers to the variable name`.

- 

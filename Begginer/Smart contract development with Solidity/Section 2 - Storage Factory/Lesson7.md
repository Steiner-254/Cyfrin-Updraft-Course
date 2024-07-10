# Inheritance in Solidity

## Introduction
- In this lesson, we are going to introduce the concept of `inheritance` and `overriding`, two powerful tools that allow developers to create more modular, maintainable, and reusable smart contracts. By leveraging these techniques, you can build upon existing contracts and customize their functions.

## Inheritance
- We are going to enhance the SimpleStorage contract by adding a new functionality: the ability to add five (5) to the stored favoriteNumber. To achieve this, we could duplicate the existing SimpleStorage contract and make changes to the new version. However, this approach leads to redundant code. A better practice could be to utilize `inheritance`, wich is the mechanism that allows the AddFiveStorage contract to derive all the functionalities of SimpleStorage.
- Let's begin by creating a new file `AddFiveStorage.sol` and name-importing `SimpleStorage.sol`:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {}
```

- The `is` keyword signifies inheritance and links the parent contract `SimpleStorage` to its `child contract`, `AddFiveStorage`.

## Override and virtual
- The `AddFiveStorage` contract now inherits all methods from `SimpleStorage`. It's possible to add new functions to it, for example:

```
function sayHello() public pure returns(string memory) {
    return "Hello";
}
```

##

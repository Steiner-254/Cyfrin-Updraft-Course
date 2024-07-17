# Resetting an Array

## Introduction
- In this section, we'll focus on one of the final steps to complete the `withdraw` function: effectively resetting the funders array.

## Resetting an Array
- The simplest way to reset the `funders` array is similar to the method used with the mapping: iterate through all its elements and reset each one to `0`. Alternatively, we can create a brand new funders array.
```
funders = new address();
```

- 🗒️ NOTE

>> You might recall using the `new` keyword when deploying a contract. In this context, however, it resets the funders array to a zero-sized, blank address array.

## Conclusion
- In this lesson, we learned how to reset the funders array by either iterating through its elements or creating a new zero-sized array. This step is crucial for completing the `withdraw` function and ensuring the contract's data is properly managed.

## 🧑‍💻 Test yourself
1. 📕 Why is it important to reset the `funders` array when implementing the `withdraw` function?
- Answer:

>> By resetting the `funders` array, the contract starts with a clean slate for each withdrawal operation, reflecting the current and accurate list of funders eligible for withdrawal.

2. 🧑‍💻 Create a method `expensiveReset` that resets an array using the iteration method.
- Answer:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayResetter {
    uint256[] public arrayToReset;

    function expensiveReset() public {
        // Reset array using iteration method
        for (uint256 i = 0; i < arrayToReset.length; i++) {
            delete arrayToReset[i];
        }
    }
}
```

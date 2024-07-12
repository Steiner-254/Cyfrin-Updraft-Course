# Solidity reverts

## Introduction
- In this lesson, we will delve into how do transaction reverts work, what is `gas` where is used.

## Revert
- Let's start by adding some logic to the `fund` function:
```
uint256 public myValue = 1;
function fund() public {
   myValue = myValue + 2;
}
```

- A `revert` action `undoes` all prior operations and returns the remaining gas to the transaction's sender. In this fund function, myValue increases by two (2) units with each successful execution. However, if a revert statement is encountered right after, all actions performed from the start of the function are undone. myValue will then reset to its initial state value, or one.

```
uint256 public myValue = 1;
function fund() public {
   myValue = myValue + 2;
   require(msg.value > 1e18, "didn't send enough ETH");
   // a function revert will undo any actions that have been done.
   // It will send the remaining gas back
}
```

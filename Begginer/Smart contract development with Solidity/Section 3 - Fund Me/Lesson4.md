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

## Gas Usage
- 🔥 CAUTION

>> The gas used in the transaction will not be refunded if the transaction fails due to a revert statement. The gas has already been consumed because the code was executed by the computers, even though the transaction was ultimately reverted.

- Users can specify how much gas they're willing to allocate for a transaction. In the case where the fund function will contain a lot of lines of code after the require and we did indeed set a limit, the gas which was previously allocated but not used will not be charged to the user

- 🗒️ NOTE

>> If a transaction reverts, is defined as `failed`.

##

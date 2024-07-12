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

-


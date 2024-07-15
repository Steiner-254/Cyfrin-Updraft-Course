# Using Safemath

## Introduction
- In this lesson, we will explore `SafeMath`, a widely used library before Solidity version 0.8, and understand why its usage has now decreased.

## Integer Overflow
- `SafeMath.sol` was a staple in Solidity contracts before version 0.8. After this version, its usage has significantly dropped.
- Let's begin by creating a new file called `SafeMathTester.sol` and adding a function add that increments the bigNumber state variable.
```
// SafeMathTester.sol
pragma solidity ^0.6.0;

contract SafeMathTester {
    uint8 public bigNumber = 255;

    function add() public {
    bigNumber = bigNumber + 1;
    }
}
```

- Notice we are using `compiler version 0.6.0`. The bigNumber is a uint8 variable with a maximum value of `255`. If we call the add function, it will return 0 instead of the expected 256.
- Before Solidity version `0.8.0`, `signed` and `unsigned` integers were unchecked, meaning that if they exceeded the maximum value the variable type could hold, they would reset to the lower limit. This pattern is known as `integer overflow` and the `SafeMath library` was designed to prevent it.

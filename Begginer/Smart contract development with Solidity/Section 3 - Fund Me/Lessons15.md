# Using Safemath

## Introduction
- In this lesson, we will explore `SafeMath`, a widely used library before Solidity version 0.8, and understand why its usage has now decreased.

## Integer Overflow
- `SafeMath.sol` was a staple in Solidity contracts before `version 0.8`. After this version, its usage has significantly dropped.
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

## SafeMath
- `SafeMath.sol` provided a mechanism to revert transactions when the maximum limit of a uint256 data type was reached. It was a typical security measure across contracts to avoid erroneous calculations and potential exploits.
```
function add(uint a, uint b) public pure returns (uint) {
    uint c = a + b;
    require(c >= a, "SafeMath: addition overflow");
    return c;
}
```

## Solidity 0.8.0
- With the introduction of Solidity `version 0.8`, automatic checks for `overflows` and `underflows` were implemented, making `SafeMath` redundant for these checks. If `SafeMathTester.sol` is deployed with Solidity 0.8.0, invoking the `add function` will cause a transaction to fail, when, in older versions, it would have `reset to zero`.
- For scenarios where mathematical operations are known not to exceed a variable's limit, Solidity introduced the `unchecked` construct to make code more *gas-efficient*. Wrapping the addition operation with `unchecked` will ignore the *overflow and underflow checks*: if the bigNumber exceeds the limit, it will wrap its value to zero.

```
uint8 public bigNumber = 255;

function add() public {
    unchecked {
    bigNumber = bigNumber + 1;
 }
}
```

- 🔥 CAUTION

>> It's important to use unchecked blocks with caution as they reintroduce the possibility of `overflows` and `underflows`.

## Conclusion
- The evolution of Solidity and `SafeMath.sol` highlights the continuous advancements in Ethereum smart contract development. Although recent updates have made `SafeMath.sol` less essential, it remains a significant part of Ethereum's history. Understanding its role provides valuable insight into the progress and maturation of Solidity.

## 🧑‍💻 Test yourself
1. 📕 Why was the `SafeMath` library widely used before version 0.8?
- Answer:

>> The `SafeMath` library was widely used before Solidity version 0.8 to prevent `overflows` and `underflows` in arithmetic operations. In versions before 0.8, Solidity did not automatically check for these issues, leading to potential security vulnerabilities. `SafeMath` provided functions that included these checks, ensuring safer and more reliable arithmetic operations.

2. 📕 Explain the meaning of `integer overflow` and `integer underflow`. Make an example using `uint16`.
- Answer:

>> `Integer overflow` occurs when a calculation exceeds the maximum value a data type can hold and wraps around to start from the minimum value.

>> `Integer underflow` happens when a calculation goes below the minimum value a data type can hold and wraps around to start from the maximum value.

- `Integer Overflow Example`


```
uint16 maxValue = 65535;
maxValue = maxValue + 1; // This will cause an overflow
```

- `Integer Underflow Example`

```uint16 minValue = 0;
minValue = minValue - 1; // This will cause an underflow
```

- N/B:

>> Starting with Solidity version 0.8, these overflow and underflow conditions are automatically checked by the compiler, and an error is thrown if such a condition occurs, preventing unexpected behavior.

3. 📕 What happened after solidity version 0.8?
- Answer:

>> After Solidity version 0.8, the language introduced built-in overflow and underflow checks for arithmetic operations. This means that when an arithmetic operation causes an overflow or underflow, the transaction will automatically revert. This built-in protection helps prevent many common bugs and security vulnerabilities related to arithmetic operations.

4. 📕 What is the `unchecked construct`?
- Answer:

>> The unchecked construct in Solidity is a way to explicitly disable the automatic overflow and underflow checks introduced in version 0.8. By default, arithmetic operations in Solidity 0.8 and later will revert if they cause an overflow or underflow. However, there are scenarios where you might want to allow these overflows or underflows without reverting the transaction. In such cases, you can use the unchecked construct.

5. 🧑‍💻 Modify the `SafeMathTester` contract by using the `SafeMath` library to prevent `integer overflow`.

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Importing SafeMath library to prevent overflow and underflow errors
import "./SafeMath.sol";

contract SafeMathTester {
    // Using SafeMath library for uint256 type
    using SafeMath for uint256;

    uint256 public result;

    // Function to test addition using SafeMath
    function testAddition(uint256 a, uint256 b) public {
        // Uses SafeMath add function to safely add two numbers
        result = a.add(b);
    }

    // Function to test subtraction using SafeMath
    function testSubtraction(uint256 a, uint256 b) public {
        // Uses SafeMath sub function to safely subtract two numbers
        result = a.sub(b);
    }

    // Function to test multiplication using SafeMath
    function testMultiplication(uint256 a, uint256 b) public {
        // Uses SafeMath mul function to safely multiply two numbers
        result = a.mul(b);
    }

    // Function to test division using SafeMath
    function testDivision(uint256 a, uint256 b) public {
        // Uses SafeMath div function to safely divide two numbers
        result = a.div(b);
    }
}
```

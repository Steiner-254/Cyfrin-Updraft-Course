# Creating custom errors

## Introduction
- In the previous lesson, we learned how to make our contracts more gas efficient. In this lesson, we will further enhance their efficiency.

## Require
- One way to improve gas efficiency is by optimizing our require statements. Currently, the `require` statement forces us to store the string `'sender is not an owner'`. Each character in this string is stored individually, making the logic to manage it complex and expensive.

## Custom Errors
- Introduced in `Solidity 0.8.4`, custom errors can be used in `revert statements`. These errors should be declared at the top of the code and used in `if statements`. The cheaper error code is then called in place of the previous error message string, reducing gas costs.
- We can start by creating a `custom error`:
```
error NotOwner();
```

- Then, we can replace the `require` function with an `if statement`, using the revert function with the newly created error:
```
if (msg.sender != i_owner) {
 revert NotOwner();
}
```

- By implementing custom errors, we reduce gas costs and simplify error handling in our smart contracts.

## Conclusion
- In this lesson, we have learned how to further optimize gas efficiency in Solidity contracts by using custom errors instead of traditional require statements with strings.

## 🧑‍💻 Test yourself
1. 📕 What are the benefits of declaring custom errors instead of using the `require` keyword?
- Answer:

>> Custom errors are more gas-efficient than `require`, enhance readability by reducing clutter, promote reusability, and provide detailed failure information, making debugging and error handling easier.

2. 🧑‍💻 Create a custom error that is triggered when `msg.sender` is `address(0)` and then convert it into an equivalent if statement with a revert function.
- Answer:
- `Custom Error:`
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Example {

    // Declare a custom error
    error InvalidSender(address sender); // Custom error for invalid sender address

    function checkSender() public {
        // Check if the sender's address is the zero address
        if (msg.sender == address(0)) {
            // Trigger the custom error with the sender's address
            revert InvalidSender(msg.sender);
        }
        // Function logic here (if sender address is not zero)
    }
}
```

- `Equivalent *require* Statement with Revert:`
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ExampleWithRequire {

    function checkSender() public {
        // Check if the sender's address is the zero address
        if (msg.sender == address(0)) {
            // Revert the transaction with an error message if sender's address is zero
            revert("Invalid sender: address(0)");
        }
        // Function logic here (if sender address is not zero)
    }
}
```

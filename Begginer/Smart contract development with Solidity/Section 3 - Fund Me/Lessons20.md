# Solidity function modifiers

## Introduction
- In this lesson, we will explore `modifiers` and how they can simplify code writing and management in Solidity. `Modifiers` enable developers to create reusable code snippets that can be applied to multiple functions, enhancing `code readability, maintainability, and security`.

## Repeated Conditions
- If we build a contract with multiple administrative functions, that should only be executed by the contract owner, we might repeatedly check the caller identity:
```
require(msg.sender == owner, "Sender is not owner");
```

- However, repeating this line in every function clutters the contract, making it harder to `read, maintain, and debug`.

## Modifiers
- `Modifiers` in Solidity allow embedding custom lines of code within any function to modify its behaviour.
- Here's how to create a modifier:

```
modifier onlyOwner {
    require(msg.sender == owner, "Sender is not owner");
    _;
}
```

- 🗒️ NOTE

>> The modifier is named `onlyOwner` to reflect the condition it checks.

## The _ (underscore)
- The `underscore _` placed in the body is a placeholder for the modified function's code. When the function with the modifier is called, the code before `_` runs first, and if it succeeds, the function's code executes next.
- For example, the onlyOwner modifier can be applied to the withdraw function like this:
```
function withdraw(uint amount) public onlyOwner {
    // Function logic
}
```

- When `withdraw` is called, the contract first executes the `onlyOwner` modifier. If the `require` statement passes, the rest of the withdraw function executes.
- If the underscore `_` were placed before the require statement, the function's logic would execute first, followed by the require check, which is not the intended use case.

## Conclusion
- Using modifiers like `onlyOwner` simplifies contract development by centralizing common conditions, reducing code repetition, and enhancing contract readability and maintainability.

## 🧑‍💻 Test yourself
1. 📕 Why is it beneficial to use modifiers for access control?
- Answer:

>> To increase efficiency, ease code maintainability and also improve security of the code.

2. 🧑‍💻 Implement a `modifier` named `onlyAfter(uint256 _time)` that ensures a function can only be executed after a specified time.
- Answer:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimedExecution {

    // Modifier to ensure function execution only after a specified time
    modifier onlyAfter(uint256 _time) {
        require(block.timestamp >= _time, "Function called too early.");
        _;
    }

    // Example function using the onlyAfter modifier
    function timedFunction(uint256 _time) public onlyAfter(_time) {
        // Function logic here
    }

    // Function to get the current block timestamp (for testing purposes)
    function getCurrentTime() public view returns (uint256) {
        return block.timestamp;
    }
}
```

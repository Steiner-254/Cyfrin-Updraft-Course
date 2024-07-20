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

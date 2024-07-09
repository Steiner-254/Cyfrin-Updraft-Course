# Solidity imports

## Introduction
- In the previous lesson, we integrated the `SimpleStorage` code directly into the `StorageFactory` contract. This allowed StorageFactory to have full access to the SimpleStorage contract’s functionality. In this lesson, we will explore a more efficient way to arrange and organize the code by using the import statement.

## Importing code
- The `import` keyword enables a contract to utilize code from other files without needing to include the entire codebase directly within the contract. Here are two of the main advantages that the import keyword provides:
1. `No cluttering:` it prevents your current file from being cluttered with numerous lines of code, keeping it clean and organized.
2. Simplified maintenance: by keeping the code in separate files, it becomes easier to maintain and update individual components without affecting the entire codebase. For example, if we change some lines inside SimpleStorage, we would have also to constantly copy-paste the modified content into StorageFactory

- You can now remove the previously added SimpleStorage code and replace it with the import shorthand:

```
import "./SimpleStorage.sol";
```

## 

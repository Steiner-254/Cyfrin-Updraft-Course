# Introduction
- In this lesson, you'll discover the basics of Remix and how to create and compile your first contract.

## Remix IDE
- Open Remix to get started.
- This is an IDE (Integrated Development Environment), a powerful tool used to build and develop smart contracts in solidity. It helps to easily visualize and interact with our smart contracts. It contains a file explorer that hosts all the files, a solidity compiler and a tab where you can deploy your contracts.

1. 🧹 Remove all the existing files and folders by right-clicking on them (optional).
2. ✨ Create a new file, e.g., `SimpleStorage.sol`. The .sol extension tells the compiler that this is a Solidity file.

## Compiler directive
- The pragma directive specifies the version of the solidity compiler that you want to use to build your source file. When the compiler encounters this line, it will check its version against the one you specified here. If the compiler version is different, Remix will automatically adjust accordingly to your specifications.
- You can specify the compiler version(s) in the following ways:
- use exactly one version

```
pragma solidity 0.8.19; // use only version 0.8.19
```

- use versions that fall within a lower and upper range

```
// use versions between 0.8.19 and 0.9.0 (excluded)
pragma solidity ^0.8.19; 
pragma solidity  >=0.8.19 < 0.9.0;
```

>> !NOTE: Remember to write comments in your code for you to refer to later on.

##

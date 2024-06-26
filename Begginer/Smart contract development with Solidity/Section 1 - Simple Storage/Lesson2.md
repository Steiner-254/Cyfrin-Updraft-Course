# Setting up your first contract
- In this lesson, you'll discover the basics of Remix and how to create and compile your first contract.

## Remix IDE
- Open Remix to get started.
- This is an IDE (Integrated Development Environment), a powerful tool used to build and develop smart contracts in solidity. It helps to easily visualize and interact with our smart contracts. It contains a file explorer that hosts all the files, a solidity compiler and a tab where you can deploy your contracts.

>> 🧹 Remove all the existing files and folders by right-clicking on them (optional).

>> ✨ Create a new file, e.g., SimpleStorage.sol. The .sol extension tells the compiler that this is a Solidity file.

## Compiler directive
- The pragma directive specifies the version of the solidity compiler that you want to use to build your source file. When the compiler encounters this line, it will check its version against the one you specified here. If the compiler version is different, Remix will automatically adjust accordingly to your specifications.
- You can specify the compiler version(s) in the following ways:
- use exactly one version

>> pragma solidity 0.8.19; // use only version 0.8.19

- use versions that fall within a lower and upper range

>> // use versions between 0.8.19 and 0.9.0 (excluded)
>> pragma solidity ^0.8.19; 
>> pragma solidity  >=0.8.19 < 0.9.0;

- !NOTE

>> Remember to write comments in your code for you to refer to later on.

## SPDX License Identifier
- It's a good practice (even not mandatory) to start your smart contract with an SPDX License Identifier. It helps in making licensing and sharing code easier from a legal perspective.

>> // SPDX-License-Identifier: MIT

>> pragma solidity ^0.8.19;

- MIT is known as one of the most permissive licenses which means anybody can use this code and pretty much do whatever they want with it.

## Writing the Smart Contract
- Start by writing your contract using the keyword contract. Give it a name, e.g., SimpleStorage. All the code inside the curly brackets will be considered part of this contract.
If you are familiar with Object Oriented Programming Languages, you can think of a contract as a concept similar to a class.

```

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    //here we'll place the content of the contract
}

```

## Compiling the Contract
1. In Remix IDE, select the Solidity Compiler.
2. Choose the version of the compiler that matches the version specified in your Solidity file.
3. Hit the Compile button.

- Compiling your code means taking human-readable code and transforming it into computer-readable code or bytecode.
If you see a green checkmark, it means your compilation was successful. If there is any error, Remix will point out where the error is, and you can debug it accordingly.


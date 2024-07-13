# Importing libaries from NPM and Github

## Introduction
- As we delve into smart contract development, interacting with external smart contracts will become increasingly frequent. This can involve the use of multiple interfaces, which can clog up the source code and make it difficult to read.

## Interfaces
- Let's take a look at the SmartContract interface as an example:
```
interface SmartContract {
    function someFunction() external view returns(uint, uint){};
}
```

- To include this contract, we simply use the import `"./SimpleStorage.sol"` statement at the top of our file. Instead, if the project is not stored locally, we can use imports from Github.

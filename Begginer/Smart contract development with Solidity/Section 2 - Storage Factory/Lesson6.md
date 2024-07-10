# Interacting with contracts ABI

## Introduction
- In this lesson, the `StorageFactory` contract will be upgraded to keep track of all deployed SimpleStorage contracts. This will allow us also to interact with each deployed contract individually.

## Storing the deployed contracts
- In the current `StorageFactory` version, every time `createSimpleStorageContract` is called, a new `SimpleStorage` contract is deployed and overridden inside the variable `SimpleStorage`. Past deployments are not being tracked down.
- To solve this issue we can create a variable `listOfSimpleStorageContracts`, which is an array of `SimpleStorage contracts`. In this way, whenever a contract is created, it gets added to a dynamic array.

```
SimpleStorage[] public listOfSimpleStorageContracts;
```

## 

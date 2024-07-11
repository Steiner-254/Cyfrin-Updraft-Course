# Sections summary and recap

## Introduction
- This section covered how to deploy contracts, how to import and interact with them, and using inheritance to customize their functionalities.

## Deploying and importing
- We delved into the use of the `new` keyword to deploy multiple instances of a contract, allowing for the creation of numerous contract instances as needed.
Contracts can also be imported, which is equivalent to copying the code into the file but with the advantage of enhanced code reusability and modularity. It's good practice to use named imports, selecting only the contracts we intend to use from the file.

```
import { Contract as MyContract } from './myOtherContract.sol';
```

## Contracts interaction
- Solidity lets you interact with other contracts. To do so we need the contract's `address` and its `ABI (Application Binary Interface)`:
```
contract AddFiveStorage is SimpleStorage {}
```

## 

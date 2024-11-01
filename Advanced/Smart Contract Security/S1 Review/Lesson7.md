# Advanced Solidity Prerequisites
- ***Learn advanced concepts in Solidity, focusing on storage in smart contracts. Delve into how storage works and the role of constants and immutables.***

- Let's look at a couple advanced solidity concepts that will be important to understand as you progress through this course.

## The Core of Smart Contracts: Storage
- The first advanced feature we'll be covering today is storage in smart contracts. Every smart contract includes this integral element. This critical component is the space allotted to your variables within the contract.
- When you create a state variable within your contract, an individual storage slot is carved out just for that variable.
- It's worth noting, however, that constants or immutable variables do not occupy space in storage. This unique trait is due to their nature of being stored directly within the contract's bytecode.
- To illustrate:

![alt text](<Images/image copy 4.png>)

### Hands-on Learning with Code
- You can see this yourself through a few commands in Foundry. In the above contract, if we use...

```bash
forge inspect Counter storage
```

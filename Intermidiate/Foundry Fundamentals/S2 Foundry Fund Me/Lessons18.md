# Introduction to Storage optimization
- ***In this lesson, you'll learn about optimizing Ethereum smart contract storage to reduce gas consumption. It covers storage variables, their impact on gas usage, and how to efficiently use storage and memory in Solidity. The lesson also includes practical examples using Anvil.***

## Optimizing GAS consumption by properly managing Storage
- **Storage** is the specific area within the blockchain where data associated with a smart contract is permanently saved. These are the variables that we defined at the top of our contract, before going into functions, also called `state variable` or `global variables`.
- Imagine yourself being in a giant locker room, and in each locker, you have a space of 32 bytes. Each locker (storage space) is numbered/labeled and its number/label acts as the key, in the key-value pair, thus using this number/label we can access what's stored in the locker. Think of state variables as the labels you give to these lockers, allowing you to easily retrieve the information you've stored. But remember, space on this shelf isn't unlimited, and every time you add or remove something, it comes at a computational cost. From the previous lessons, we learned that this computational cost bears the name of `gas`.
- So, being a tidy developer, you'll want to use your storage efficiently, potentially packing smaller data types together or using mappings (fancy ways of labeling sections of the locker) to keep things orderly and cost-effective.
- The following info is a bit more advanced, but please take your time and learn it. As we emphasized in the previous lesson, the amount of gas people pay for in interacting with your protocol can be an important element for their retention, regardless of the type of web3 protocol you'll build.
- ***No one likes paying huge transaction costs.***

## Layout of State Variables in Storage
- The [Solidity documentation](https://docs.soliditylang.org/en/latest/internals/layout_in_storage.html) is extremely good for understanding this subject.
- The important aspects are the following:
1. Each storage has 32 bytes;
2. The slots numbering starts from 0;
3. Data is stored contiguously starting with the first variable placed in the first slot;
4. Dynamically-sized arrays and mappings are treated differently (we'll discuss them below);
5. The size of each variable, in bytes, is given by its type;
6. If possible, multiple variables < 32 bytes are packed together;
7. If not possible, a new slot will be started;
8. Immutable and Constant variables are baked right into the bytecode of the contract, thus they don't use storage slots.

- 
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

- Now this seems like a lot, but let's go through some examples: (Try to think about how the storage looks before reading the description)

```javascript
uint256 var1 = 1337;
uint256 var2 = 9000;

uint64 var3 = 0;
```

- How are these stored?
- In `slot 0` we have `var1`, in `slot 1` we have `var2`, and in `slot 3` we have `var 3`. Because `var 3` only used 8 bytes, we have 24 bytes left in that slot. Let's try another one:

```javascript
uint64 var1 = 1337;
uint128 var2 = 9000;
bool var3 = true;
bool var4 = false;
uint64 var5 = 10000;
address user1 = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
uint128 var6 = 9999;
uint8 var7 = 3;

uint128 var8 = 20000000;
```

- How are these stored?
- Let's structure them better this time:

```
slot 0
```

1. var1 8 bytes (8 total)
2. var2 16 bytes (24 total)
3. var3 1 byte (25 total)
4. var4 1 byte (26 total)
5. var5 has 8 bytes, it would generate a total of 34 bytes, but we have only 32 so we start the next slot

```
slot 1
```
1. var5 8 bytes (8 total)
2. user1 20 bytes (28 total)
3. var6 has 8 bytes, it would generate a total of 36 bytes, we have a max of 32 so we start the next slot

```
slot2
```

1. var6 16 byes (16 total)
2. var7 1 byte (17 total)
3. var8 has 16 bytes, it would generate a total of 33 bytes, but as always we have only 32, we start the next slot

```
slot3
```

1. var8 16 bytes (16 total)


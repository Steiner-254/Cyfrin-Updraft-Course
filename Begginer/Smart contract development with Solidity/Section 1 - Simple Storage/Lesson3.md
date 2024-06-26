# Basic variable types

## Solidity Types
- Solidity supports various elementary types that can be combined to create more complex ones. You can read more about them in the [Solidity documentation](https://docs.soliditylang.org/en/v0.8.20/types.html#types).
- 🕵️‍♂️ For now, let's focus on the most commonly used:
| name | symbol | value representation | | ---- | ---- | ---- | |Boolean |bool|true or false| |Unsigned integer| uint| unsigned whole number (positive) | |Integer|int| signed whole number (positive and negative) |Address|address| 20 bytes value. An example of an address can be found within your Metamask account. |Bytes|bytes| low-level raw byte data

## Variables definition in Solidity
- Variables are just placeholders for values. A value can be one data type described in the table. For instance, we could create a Boolean variable named hasFavoriteNumber, which would represent whether someone has a favourite number or not (true or false).

```
bool hasFavoriteNumber = true; //the variable `hasFavoriteNumber` represents the constant `true`
```

- It's possible to specify the number of bits used for uint and int. For example, uint256 specifies that the variable has 256 bits. uint is a shorthand for uint256.

>> !NOTE It's always advisable to be explicit when specifying the length of the data type.

- Strings are equivalent to bytes: they are identically encoded, but designed specifically for text. For this reason, a string can easily be converted into bytes.
The semicolon at the end of each line signifies that a statement is completed.

```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Simple Storage{
    // Basic types
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0xaB1B7206AA6840C795aB7A6AE8b15417b7E63a8d;
    bytes32 favoriteBytes32 = "cat";
}
```

## Magic bytes
- Bytes are a collection of characters written in hexadecimal representation.

>> bytes1 minBytes = "I'm a fixes size byte array of 1 byte";

>> bytes32 maxBytes = "I'm a fixes size byte array of 32 bytes";

>> bytes dynamicBytes = "I am a dynamic array, so you can manipulate my size";

- Bytes can also be allocated in size (up to bytes32). However, bytes and bytes32 represent distinct data types.
[Bits and Bytes overview](https://www.youtube.com/watch?v=Dnd28lQHquU)

## The contract logic
- 📋 Let's explore a scenario where there is a task involving the storage of a favourite number. For this purpose, we can start storing the variable favoriteNumber of type uint:

```
uint256 favoriteNumber;
```

>> !IMPORTANT Every variable in Solidity comes with a default value which may or may not be initialized. uninitialized uint256 for example, defaults to 0 (zero) and an uninitialized boolean defaults to false.


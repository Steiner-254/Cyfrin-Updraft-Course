# Advanced EVM - Opcodes, calling, etc
- Delves into advanced Ethereum Virtual Machine (EVM) concepts, focusing on opcodes and function calls. It demonstrates decoding transaction data using MetaMask and highlights the importance of verifying transactions to ensure safety in the cryptocurrency world.

### Advanced EVM - Opcodes, Calling, and Encoding
- You can find all the code we'll be working with in this section in this **[Sublesson Repo](https://github.com/PatrickAlphaC/hardhat-nft-fcc/tree/main/contracts/sublesson)**.
- Until now, we've been using abi.encode and abi.encodePacked effectively as a means to concatenate strings (which has actually been deprecated in favour of string.concat). In this lesson we'll head back into **[Remix](https://remix.ethereum.org)** to further explore what's actually happening when we invoke these functions.

>>❗ **NOTE** This section is definitely going to be a little advanced. We're going to go deep into the Ethereum Virtual Machine, op codes and the binary that makes everything work behind the scene.

>> If you don't understand things right away that's 100% ok. I encourage you to challenge yourself to absorb as much of this as possible before moving on. There's no shame in going through the content a couple times.

### Encoding
- When ready, in **[Remix](https://remix.ethereum.org)**, create a new file named `Encoding.sol`. We can set this contract up with some boilerplate before writing the functions we'll use to explore encoding and decoding.

```js
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Encoding {}
```

- Within this contract, let's now right a simple function to concatenate two strings using `abi.encodePacked`.

```js
function combineStrings() public pure returns(string memory){
    return string(abi.encodePacked("Hi Mom! ", "Miss you!"));
}
```

- Now, if we deploy this and call our combineStrings function, our output is `Hi Mom! Miss you!`.

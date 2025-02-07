# Interact with a smart contract
- ***Teaches how to interact with `Solidity smart contracts`, particularly for `minting NFTs`. It includes `setting up` the necessary environment and `scripts`, and `deploying NFTs` using tools like `Foundry` and `IPFS`.***

## Basic NFT Interactions
- Alright, with our tests passing we're going to want a way to interact with our contract programmatically. We could use `cast` commands, but let's write an interactions script instead. Create the file `script/Interactions.s.sol`. You know the drill for our boilerplate by now.

```js
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

contract MintBasicNft is Script{
    function run() external {}
}
```

- 
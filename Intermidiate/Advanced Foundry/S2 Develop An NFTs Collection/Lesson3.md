# Foundry setup
- ***This session guides you through setting up the `Foundry environment` for `NFT development`. It includes instructions on creating directories, initializing your project, and using OpenZeppelin contracts for defining NFTs, highlighting the process of minting and deploying NFT images.***

### Foundry Setup
- Now that we know what an NFT is, let's investigate how we can build our own. As always the code we're writing will be available in the **[GitHub Repo](https://github.com/Cyfrin/foundry-nft-cu)** associate with this section.
- To start, let's initialize our workspace. Create a new directory in your course folder.

```bash
mkdir foundry-nft
```

- We can then switch to this directory and open it in VSCode.

```bash
cd foundry-nft
code .
```

- Finally, we can initialize our foundry project.

```bash
forge init
```

- Once initialized, be sure to remove the example contracts `src/Counter.sol`, `test/Counter.t.sol` and `script/Counter.s.sol`. Finally, assure that your `.gitignore` contains `.env` and `broadcast/`

### NFT Contracts
- Now, as mentioned previously, NFTs are just another type of **[Token Standard](https://eips.ethereum.org/EIPS/eip-721)**, similar to ERC20s. As such, we could simply write our contract and begin implementing all the necessary methods to comply with this standard. However, like ERC20s, we can also just import a library (like OpenZeppelin) which does all this heavy lifting for us.
- Begin by creating `src/BasicNft.sol` and setting up our usual boilerplate.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract BasicNft{}
```

- 
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


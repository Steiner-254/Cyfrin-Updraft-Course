# Deploy and interact using Anvil
- This lesson covers deploying and interacting with NFTs using Anvil, a local Ethereum network. It includes setting up MetaMask with Anvil, deploying Mood NFTs, minting, and flipping their mood, demonstrating the process of NFT interaction on a local blockchain network.

### SVG NFT Anvil Demo
- Alright, let's do this for real. I wanna see our token in our Metamask wallet!

>>❗ **NOTE** I recommend following along on `anvil` instead of sepolia, testnets can be slow and problematic, everything we're doing should work locally.

- We can start by kicking off our anvil chain. This has already been configured in our `Makefile`, so we should just have to run `make anvil`
- Once the chain is running, open a new terminal (while leaving this one open). We'll have to add some commands to our `Makefile` before proceeding.

```js
deployMood:
	@forge script script/DeployMoodNft.s.sol:DeployMoodNft $(NETWORK_ARGS)
```

- Looks great! Remember, you can add anvil as at network to Metamask by navigating to your network selector and choosing `+ Add network`.
- With the contract address, we should be able to use a cast command to interact with it.

```bash
cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "mintNft()" --private-key ac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://localhost:8545
```

- When that transaction completes, what we can _finally_ do, is take that contract address, go back into `Metamask > NFTs > Import NFT`. This is going to ask for our contract address, which we have from our deployment, and our tokenId, which is 0.
- Once imported ...

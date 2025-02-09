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

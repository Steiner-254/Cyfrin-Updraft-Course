# Test the smart contract without a testnet

## Introduction
- In this lesson, we'll delve into *`end-to-end`* testing of a Solidity contract's deployment and execution.

## Deployment Transaction
- First, we need to compile the contract to ensure the code is correct. On Remix, set the `injected provider` to MetaMask and confirm it is properly synced to the testnet. Ensure you have some Sepolia Ether (ETH) in your wallet if you plan to deploy the contract on Sepolia.
- We'll `deploy` the `FundMe` contract by clicking deploy and then confirming the transaction in MetaMask, which may take some time.

## Contract Interaction
- After successfully deploying the `FundMe` contract, you'll see several buttons to interact with it:

>> `Red button:` Payable functions (e.g., fund)

>> `Orange button:` Non-payable functions (e.g., withdraw)

>> `Blue buttons:` view and pure functions

- The `fund` function allows us to send ETH to the contract `(minimum 5 USD)`. The `owner` of the contract is our MetaMask account, as the `constructor` sets the deployer as the owner.

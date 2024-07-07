# Deploying your first contract
- Follow along with the course here.

## Deploying A Simple Storage Contract On A Testnet
- If you’ve been following along through our work with simple storage contract, you will see that we have progressively added functionality to our solidity contract. With our favorite number feature, typing person, public list, favorite number retrieval, and update functions, we’ve built up a solid contract structure. Now, it’s time to steer away from abstract theorizing and practically deploy this to a real `testnet.`

## Pre-Deployment Audit
- `Make sure to write tests, carry out audits, and ensure the robustness of your contract before deploying it to production.`

## Compilation Check
- This ensures that our contract has no errors or warnings and is fit for deployment. Go to your development environment and ensure that you have a green checkmark, indicating a successful compilation.

## Changing The Environment
- The deployment process Kicks off by switching from the local virtual environment (Remix VM) to MetaMask as the Injected provider. Here's how you can make the switch:

1. Navigate to the deploy tab
2. Delete any content there
3. Change the environment

- Choose the Injected Provider MetaMask option. This allows the web interface to interact with your MetaMask account.

## Connecting The Account
- Upon choosing MetaMask as your injected provider, you will be prompted to pick a specific account for use. Choose your desired account and proceed to connect it. Next, check your MetaMask display and ensure that your account is properly connected to Remix. It’s critical to double-check that you are on the correct testnet as this guide uses the Sapolia testnet.
- If have sufficient Sapolia ETH in your account provided from a [faucet](https://www.alchemy.com/faucets/ethereum-sepolia), you can now go ahead and click the "Deploy" button.

## Confirming The Transaction
- Upon hitting the deploy button, MetaMask will prompt you to confirm the transaction for contract deployment.
- Since we are on the Sapolia testnet and not on a mainnet, the money spent here is not real.
- Click "Confirm" to launch the contract deployment.

## 

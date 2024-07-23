# Deploy a smart contract locally using Ganache
- Guide on deploying smart contracts locally using `Ganache` and Foundry's `Anvil`, including setting up `Ganache`, using MetaMask for custom networks, and integrating Anvil.
- **Ganache** is an Ethereum developer tool that allows you to simulate a blockchain environment locally and test deployed smart contracts. You can use Ganache across the entire development cycle; enabling you to develop, deploy, and test your dApps in a safe and deterministic environment.

## Deploying a smart contract
- There are multiple ways and multiple places where you could deploy a smart contract. While developing using the Foundry framework the easiest and most readily available place for deployment is `Anvil`.
- `Anvil` is a local testnet node shipped with Foundry. You can use it for testing your contracts from frontends or for interacting over RPC. To run `Anvil` you simply have to type `anvil` in the terminal.  You now have access to 10 test addresses funded with 10000 ETH each, with their associated private keys. This testnet node always listens on `127.0.0.1:8545` this will be our `RPC_UR`L parameter when we deploy smart contracts here. More on this later! More info about Anvil is available [here](https://book.getfoundry.sh/reference/anvil/). Please press` Ctrl/CMD + C` to close `Anvil`. `Anvil` will be used throughout the course to deploy and test our smart contracts, but before that, let's quickly check an intermediary step.

##

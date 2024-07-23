# Deploy a smart contract locally using Ganache
- Guide on deploying smart contracts locally using `Ganache` and Foundry's `Anvil`, including setting up `Ganache`, using MetaMask for custom networks, and integrating Anvil.
- **Ganache** *is an Ethereum developer tool that allows you to simulate a blockchain environment locally and test deployed smart contracts. You can use Ganache across the entire development cycle; enabling you to develop, deploy, and test your dApps in a safe and deterministic environment.*
- **Anvil** *is a specialized Ethereum node that caters to developers using Forge, offering a local environment similar to Ganache for seamless development.*

## Deploying a smart contract
- There are multiple ways and multiple places where you could deploy a smart contract. While developing using the Foundry framework the easiest and most readily available place for deployment is `Anvil`.
- `Anvil` is a local testnet node shipped with Foundry. You can use it for testing your contracts from frontends or for interacting over RPC. To run `Anvil` you simply have to type `anvil` in the terminal.  You now have access to 10 test addresses funded with 10000 ETH each, with their associated private keys. This testnet node always listens on `127.0.0.1:8545` this will be our `RPC_UR`L parameter when we deploy smart contracts here. More on this later! More info about Anvil is available [here](https://book.getfoundry.sh/reference/anvil/). Please press` Ctrl/CMD + C` to close `Anvil`. `Anvil` will be used throughout the course to deploy and test our smart contracts, but before that, let's quickly check an intermediary step.

## Ganache
- ***Ganache*** *is a glaze, icing, sauce, or filling for pastries usually made by heating equal parts weight of cream and chopped chocolate, warming the cream first, then pouring it over the chocolate. Wait, not that ganache!* 
- The other **ganache**: Ganache is a `personal blockchain` for rapid `Ethereum` and `Filecoin` distributed application development. You can use `Ganache` across the entire development cycle; enabling you to `develop`, `deploy`, and `test` your `dApps` in a safe and deterministic environment. Better! Please download `Ganache` from [here](https://archive.trufflesuite.com/ganache/). For people using `Windows WSL` please read [this](https://github.com/Cyfrin/foundry-simple-storage-cu?tab=readme-ov-file#windows-wsl--ganache). Using `Ganache` in this environment is not the easiest thing to do. We are not going to use this in the future, so don't worry if you can't configure it properly. Hit `Quickstart Ethereum`. Voila! A brand new blockchain. We get some addresses, that have balances and private keys.

## Configuring MetaMask
- To deploy to a custom network (like your localhost), you'll need `MetaMask`. `MetaMask` is a popular cryptocurrency wallet and browser extension that allows users to interact with the Ethereum blockchain and its ecosystem. If you don't have it download it from [here](https://metamask.io/download/) Follow these steps:

1. Open MetaMask.
2. Click the three little dots and select 'Expand View'.
3. Go to 'Settings', then 'Networks'.
4. Here, you'll see the list of networks (Ethereum, Mainnet, etc.) with plenty of details about each one. Locate the RPC URL - this is key.

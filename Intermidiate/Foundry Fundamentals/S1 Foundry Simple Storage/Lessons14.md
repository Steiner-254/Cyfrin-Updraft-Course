# Deploy a smart contract locally using Forge
- Comprehensive guide on deploying smart contracts locally using `Forge` in `Foundry`, detailing command line usage, potential issues, and deployment steps.

## Deploying to a local blockchain
- To find out more about forge's capabilities type ``` forge --help ``` Out of the resulting list, we are going to use the `create` command. Type `forge create --help` in the terminal or go [here](https://book.getfoundry.sh/reference/forge/forge-create) to find out more about the available configuration options. Try running `forge create SimpleStorage`. It should fail because we haven't specified a couple of required parameters:

>> - Where do we deploy?

>> - Who's paying the gas fees/signing the transaction?

- Let's tackle both these questions. As you've learned in the previous lessons, each blockchain (private or public) has an `RPC URL (RPC SERVER)` that acts as an endpoint. When we tried to deploy our smart contract, forge tried to use `http://localhost:8545/`, which doesn't host any blockchain. Thus, let's try to deploy our smart contract specifying the place where we want to deploy it. Please start `Ganache` and press `Quickstart Ethereum`.

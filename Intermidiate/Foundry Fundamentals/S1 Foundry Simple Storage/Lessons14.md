# Deploy a smart contract locally using Forge
- Comprehensive guide on deploying smart contracts locally using `Forge` in `Foundry`, detailing command line usage, potential issues, and deployment steps.

## Deploying to a local blockchain
- To find out more about forge's capabilities type ``` forge --help ``` Out of the resulting list, we are going to use the `create` command. Type `forge create --help` in the terminal or go [here](https://book.getfoundry.sh/reference/forge/forge-create) to find out more about the available configuration options. Try running `forge create SimpleStorage`. It should fail because we haven't specified a couple of required parameters:

>> - Where do we deploy?

>> - Who's paying the gas fees/signing the transaction?

- Let's tackle both these questions. As you've learned in the previous lessons, each blockchain (private or public) has an `RPC URL (RPC SERVER)` that acts as an endpoint. When we tried to deploy our smart contract, forge tried to use `http://localhost:8545/`, which doesn't host any blockchain. Thus, let's try to deploy our smart contract specifying the place where we want to deploy it. Please start `Ganache` and press `Quickstart Ethereum`.
- Copy the RPC Server HTTP://127.0.0.1:7545. Let's run our forge create again specifying the correct rpc url. ``` forge create SimpleStorage --rpc-url http://127.0.0.1:7545 ``` This again failed, indicating the following: ``` Error accessing local wallet. Did you set a private key, mnemonic or keystore? ``` Try the following command: ``` forge create SimpleStorage --rpc-url http://127.0.0.1:7545 --interactive ``` You will be asked to enter a private key, please paste one of the private keys available in Ganache. When you paste a key you won't see the text or any placeholder symbols, just press CTRL(CMD) + V and then ENTER. Voila!  You can go to Ganache and check the Blocks and Transactions tabs to see more info about what you just did. From now on, everything we deploy shall be done on Anvil. But if you like Ganache more, feel free to use that. Do the following:

1. Run `clear`
2. Run `anvil`
3. Create a new terminal by pressing the `+` button
4. Copy one of the private keys from the anvil terminal
5. Run `forge create SimpleStorage --interactive`

- *We don't need to specify an `--rpc-url` this time because forge defaults to Anvil's RPC URL*.
- 
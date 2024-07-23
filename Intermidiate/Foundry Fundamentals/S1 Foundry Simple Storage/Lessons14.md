# Deploy a smart contract locally using Forge
- Comprehensive guide on deploying smart contracts locally using `Forge` in `Foundry`, detailing command line usage, potential issues, and deployment steps.

## Deploying to a local blockchain
- To find out more about forge's capabilities type ``` forge --help ``` Out of the resulting list, we are going to use the `create` command. Type `forge create --help` in the terminal or go [here](https://book.getfoundry.sh/reference/forge/forge-create) to find out more about the available configuration options. Try running `forge create SimpleStorage`. It should fail because we haven't specified a couple of required parameters:

>> - Where do we deploy?

>> - Who's paying the gas fees/signing the transaction?


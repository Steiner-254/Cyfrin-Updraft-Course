# Deploy a smart contract locally using Anvil
- *Tutorial on deploying smart contracts locally using Anvil, focusing on script creation, Solidity contract language, and Foundry cheat codes for deployment.*

## Deploy a smart contract locally using Anvil via scripts
- Deploying a smart contract via `scripting` is particularly handy because it provides a consistent and repeatable way to deploy reliably and its features enhance the testing of both the deployment processes and the code itself. There's a strong chance that you like the `command-line approach`, but `scripting` enriches the whole deployment process, bringing in more functionality and an ease of use second to none.
- `Foundry eases the whole process since it is written in Solidity`. This means our deployment scripts will also be written in Solidity. `It is essential to distinguish Solidity as a contract language from Solidity as a scripting language`. Foundry also incorporates elements that enhance our Solidity experience beyond the smart contracts realm. So, let's get started on creating a script to deploy our simple storage contract. In Foundry we `keep our scripts in the script folder`. Please create a new file called `DeploySimpleStorage.s.sol`. Using `.s.sol` as a suffix is a naming convention for Foundry scripts, in future lessons, when we'll write `Foundry tests`, these will bear the suffix of `.t.sol`. For more best practice info regarding Foundry scripts please click [here](https://book.getfoundry.sh/tutorials/best-practices#scripts). Open the newly created file. Here we'll write a solidity script for deploying our SimpleStorage contract. Type the following javascript: 

``` 
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19; 
contract DeploySimpleStorage{
} 
```
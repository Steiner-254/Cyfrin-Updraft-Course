# Deploy a smart contract locally using Anvil
- *Tutorial on deploying smart contracts locally using Anvil, focusing on script creation, Solidity contract language, and Foundry cheat codes for deployment.*

## Deploy a smart contract locally using Anvil via scripts
- Deploying a smart contract via `scripting` is particularly handy because it provides a consistent and repeatable way to deploy reliably and its features enhance the testing of both the deployment processes and the code itself. There's a strong chance that you like the `command-line approach`, but `scripting` enriches the whole deployment process, bringing in more functionality and an ease of use second to none.
- `Foundry eases the whole process since it is written in Solidity`. This means our deployment scripts will also be written in Solidity. `It is essential to distinguish Solidity as a contract language from Solidity as a scripting language`. Foundry also incorporates elements that enhance our Solidity experience beyond the smart contracts realm. So, let's get started on creating a script to deploy our simple storage contract. In Foundry we `keep our scripts in the script folder`. Please create a new file called `DeploySimpleStorage.s.sol`. Using `.s.sol` as a suffix is a naming convention for Foundry scripts, in future lessons, when we'll write `Foundry tests`, these will bear the suffix of `.t.sol`. For more best practice info regarding Foundry scripts please click [here](https://book.getfoundry.sh/tutorials/best-practices#scripts). Open the newly created file. Here we'll write a solidity script for deploying our SimpleStorage contract. Type the following javascript: 

``` 
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19; 
contract DeploySimpleStorage{
    // contract function and logic here
} 
```

- The first two lines are pretty self-explanatory. We declare the new contract, named `DeploySimpleStorage` For it to be considered a Foundry script and to be able to access the extended functionality Foundry is bringing to the table we need to import Script from `"forge-std/Script.sol"` and make `DeploySimpleStorage` inherit Script. 
- **NOTE:** `forge-std` also called `Forge Standard Library` *is a collection of pre-written Solidity contracts designed to simplify and enhance scripting and testing within the Foundry development framework*. Furthermore, to be able to deploy `SimpleStorage` we also need to import it by typing `import {SimpleStorage} from "../src/SimpleStorage.sol`"; 

```
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19;
import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
contract DeploySimpleStorage is Script {
    // contract function and logic here
}
``` 

- Every `script` needs a main function, which, according to the best practice linked above is called `run`. Whenever you run forge script this is the function that gets called. 

```
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19; 
import {Script} from "forge-std/Script.sol"; 
import {SimpleStorage} from "../src/SimpleStorage.sol"; 
contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
```

- `run` is an external function that will return the `SimpleStorage` contract. In the Run function, we are going to use a distinctive keyword: `vm.` Foundry has a distinctive feature known as *cheat codes*. The `vm` keyword is a cheat code in Foundry, and thereby only works in Foundry. `vm.startBroadcast` indicates the starting point for the list of transactions that get to be sent to the `RPC URL`; Similarly, `vm.stopBroadcast` indicates the ending point of the list of transactions that get to be sent to the `RPC URL`; Between those two we write: `SimpleStorage simpleStorage = new SimpleStorage();` The `new` keyword is used to create a new smart contract in Solidity. We end the function with `return simpleStorage;`
- Please select the Anvil terminal and press `CTRL(CMD) + C` to stop it. Now run the following command:
```
forge script script/DeploySimpleStorage.s.sol
``` 
- This should go through without any errors, but if you hit some errors related to incompatible solidity versions in various files please ensure that both the `SimpleStorage.sol` and `DeploySimpleStorage.s.sol` use `pragma solidity 0.8.19;` If you want to further extend your knowledge about scripting please go [here](https://book.getfoundry.sh/tutorials/solidity-scripting?highlight=scr#solidity-scripting).


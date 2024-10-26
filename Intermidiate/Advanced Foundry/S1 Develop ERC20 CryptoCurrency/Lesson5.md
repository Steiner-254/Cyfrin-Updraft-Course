# Deploy your ERC20 crypto currency
- ***This lesson provides a comprehensive guide on deploying your ERC20 token. It includes instructions for setting up a deployment script, using the deployment script to deploy your token, and tips for finalizing and testing the deployment process efficiently.***

### ERC20 Deploy Script
- With our simple token contract written, we'll of course want to test and deploy it. Let's get started with writing a deploy script.
- In your workspace's `script` folder, create a file named `DeployOurToken.s.sol`.
- We expect OurToken to behave the same, regardless of the chain it's deployed on, so we don't really need a `HelperConfig` for this example. We'll skip that step and move write into writing the deploy script.
- To begin, we can import Script and OurToken as well as add the skeleton of our run function:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurToken is Script {
    function run() external {}
}
```

- 
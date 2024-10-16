# Deploy Script
- ***A comprehensive guide to deploying a Chainlink VRF Raffle smart contract - This lesson covers how to set up your code base for deploying a Chainlink VRF Raffle smart contract using Foundry, including creating new files, adding a pragma, importing the necessary dependencies,***

- Let's begin by creating a new file in the `/script` directory called `DeployRaffle.sol` and importing the `Raffle` contract.

```javascript
pragma solidity ^0.8.19;
import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
```

>> 🗒️ **NOTE**:br

>> There are two ways to import files in Solidity: using a direct path or a relative path. In this example, we are using a relative path, where the `Raffle.sol` file is inside the `src` directory but one level up (`..`) from the current file's location.

### The `deployContract` Function
- 
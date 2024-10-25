# Creating an ERC20
- ***This lesson guides you through the manual creation of your own ERC20 token using Solidity. It covers the setup of your development environment, initialization of your project repository, and step-by-step instructions to build and define your ERC20 token's properties and ...***

### ERC20 Manual Creation
- Welcome back! Having covered the basics, let's look at how we can manually create our own ERC20 token. This is going to be one of our fastest lessons yet!

### Setting Up Your Environment
- Open a terminal in Visual Studio Code and run the following:

```bash
mkdir foundry-erc20
cd foundry-erc20
code .
```

- The above commands will create a new directory for our project, navigate into it, and open the directory in a new Visual Studio Code window.
- Once we have Visual Studio Code running, we need to initialize a blank Foundry project. Open up the terminal and execute the following command:

```bash
forge init
```

- Completing these steps sets up a development environment with some convenient boilerplate layouts to work with.
- Go ahead and delete our 3 `Counter` examples so we can start with a clean slate.
- I'm going to show you 2 different ways to create our own token, first the hard way and then a much easier way!

- You can begin by creating a new token token our `src` directory named `ManualToken.sol`. We can start this contract the same way we've been practicing this whole time (you'll get really familiar with this bit).

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ManualToken {}
```

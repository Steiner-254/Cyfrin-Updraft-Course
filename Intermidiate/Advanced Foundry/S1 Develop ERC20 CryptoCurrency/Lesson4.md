# Explore Open Zeppelin
- ***Explore the use of the `OpenZeppelin` framework for smart contract development. Learn how to leverage pre-deployed, audited, and ready-to-go contracts to simplify the creation process of your ERC20 token.***

### ERC20 OpenZeppelin
- Welcome back! As mentioned in the closing of our last lesson, we could absolutely continue with manually building out a smart contract comprised of all the required functions to be compatible with the ERC20 standard, but wouldn't it be more convenient to use pre-deployed, audited, and ready-to-go contracts?
- In this section, I'll guide you on using the OpenZeppelin Library to achieve this.

>> ❗ **NOTE** OpenZeppelin is renowned for its Smart Contract framework, offering a vast repository of audited contracts readily integrable into your codebase.

- Access [OpenZeppelin's documentation](https://docs.openzeppelin.com/contracts/5.x/) via their official website. By navigating to [Products -> Contracts Library](https://www.openzeppelin.com/contracts), you can discover a vast array of ready-to-use contracts.
- Additionally, OpenZeppelin offers a contract wizard, streamlining the contract creation process — perfect for tokens, governances, or custom contracts.

![alt text](Images/erc20-open-zeppelin1.PNG)

- Let's leverage OpenZeppelin to create a new ERC20 Token. Create a new file within `src` named `OurToken.sol`. Once that's done, let's install the OpenZeppelin library into our contract.

```bash
forge install OpenZeppelin/openzeppelin-contracts --no-commit
```

- Once installed you'll see the ERC20 contract from OpenZeppelin within `lib/openzeppelin-contracts/token/ERC20/ERC20.sol`. Let's add a remapping in our foundry.toml to make importing a little easier on us.Within foundry.toml add the line:

```bash
remappings = ["@openzeppelin=lib/openzeppelin-contracts"]
```

- We can now import and inherit this contract into `OurToken.sol`!

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {
    //constructor goes here
}
```

- 
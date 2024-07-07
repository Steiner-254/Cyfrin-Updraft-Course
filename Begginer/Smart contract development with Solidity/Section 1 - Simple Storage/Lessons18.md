# Sections Recap

## Working with Ethereum Virtual Machine (EVM)
- One term that frequently comes up when talking about deploying code onto a blockchain network is `"EVM," which stands for Ethereum Virtual Machine.` Now, the EVM might seem like a complex term, but essentially it's a standard for how to compile and deploy smart contracts to a blockchain.
- For anyone interacting with the blockchain space, particularly those deploying smart contracts, understanding the basic functioning and application of the Ethereum virtual machine is invaluable.

## EVM Compatible Blockchains
-Any smart contract or solidity code you write can be deployed to any blockchain that is compatible with the EVM. Prime examples of such blockchains and Layer 2 solutions include `Ethereum, Polygon, Arbitram, Optimism, and Zksync.` Even though a blockchain, such as Zksync, might be EVM-compatible, it's critical to ensure that all keywords are compatible as some do not work with every EVM-compatible blockchain.
- TIP:

>> `Always double-check the blockchain before deploying the smart contracts!`

## Writing Your First Smart Contract
- At the start of any smart contract or Solidity code you write, always mention the version you want to work with. Right above the version, insert the SPDX license Identifier. If you're unsure about the version to use, you can default to the MIT license for the time being.
- Here's an example:

```
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;[...]
```

- Next, you need to create what is known as a contract object. This contract object constitutes the basic structure of your smart contract. A contract in Solidity is somewhat similar to a class in other programming languages, where anything inside the curly brackets {'{'}...{'}'} forms part of that contract.

##

# Setting the project

## What is Composability in Smart Contracts?
- One of the key aspects of blockchain development is the seamless and permissionless interaction among contracts, referred to as composability. This becomes especially important in decentralized finance (DeFi), where intricate financial products interact compatibly using the same smart contract interface.
In this lesson, we'll be creating a contract titled StorageFactory that will interact with and deploy our existing SimpleStorage contract.

## Setting Up the StorageFactory Contract
- Creating our new contract in Remix follows the same steps we've previously covered. The power of repetition is indeed vastly underrated — and this principle will hold even more merit when we begin working with AI pair programming tools.
- The primary structure of every Solidity smart contract begins with the SPDX License Identifier and the desired version of Solidity expressed as a pragma statement.

```
// SPDX-License-Identifier: MITpragma solidity ^0.8.18;
```

- Next, we'll define our contract:

```
contract StorageFactory {}
```

- Once your contract is defined, remember to hit Compile The caret sign (^) before the solidity version implies that any version greater than or equal to 0.8.18 is acceptable.

## 

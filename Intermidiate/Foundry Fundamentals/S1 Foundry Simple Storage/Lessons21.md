# Deploying a smart contract on testnet (Sepolia)
- *Step-by-step tutorial on deploying smart contracts to Ethereum's Sepolia testnet using Foundry and Alchemy, including setting up RPC URLs and private keys.*

## Deploying our Contract to Testnet or Live Network with Foundry and Alchemy
- Hi, everyone! Are you curious about what your contract would look like on a testnet or a live network? If so, buckle up because this blog post will cover exactly that! We'll walk through the process of updating our `Environment Variable (.env)` file for an actual testnet.
- Clearly, we need an actual testnet for a real network. But our trusty Metamask has built-in Infura connections that are incompatible. Why? Because they're tailored specifically for MetaMask. Hence, we need our own Remote Procedure Call (RPC) URL.

## Creating our Own RPC URL for a Testnet
- *To create one, we could run our own blockchain node, but let's be honest — many folks prefer avoiding that route. Instead, we utilize Node as a Service (NaaS) applications to expedite the process.*
- One promising option is using `Alchemy` - *a free NaaS platform that we can send the transactions to*. This procedure resides within the Deploying to Testnet or Mainnnet section in the full course repo of the Foundry.

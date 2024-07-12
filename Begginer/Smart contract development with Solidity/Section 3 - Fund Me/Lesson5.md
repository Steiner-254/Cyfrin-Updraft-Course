# Intro to oracles - getting real world price data

## Introduction
- With the rapid advancement of blockchain technology and the growing adoption of `decentralized finance platforms (DeFi)`, the necessity to support multiple digital currencies has significantly increased. Enabling users to utilize their preferred digital currencies extends market reach and improves the usability of an application.
- This lesson will walk you through adding a `currency conversion feature to the fundMe contract` and setting price thresholds with `Chainlink Oracle`, a decentralized network for external data.

## USD values
- Currently, our contract will require the transaction value to be greater than one Ethereum (ETH). If we want to give the users the flexibility to spend instead 5 USD, we would need to update our contract. We can begin by specifying the new value with a state variable ```uint256 public minimumUSD = 5``` at the top of the contract.
- The next step would be changing the condition inside the `fund` function, to check if the value sent is equal to or greater than our minimumUSD. However, we are facing a roadblock here: the minimumUSD value is in USD while the transaction message value is specified in ETH.

## Decentralized Oracles
- The USD price of assets like Ethereum cannot be derived from blockchain technology alone but it is determined by the `financial markets`. To obtain a correct price information, a connection between off-chain and on-chain data is necessary. This is facilitated by a `decentralized Oracle network`.
- This blockchain limitation exists because of its `deterministic nature`, ensuring that all nodes univocally reach a consensus. Attempting to introduce external data into the blockchain, will disrupt this consensus, resulting in what is referred to as a smart contract connectivity issue or `the Oracle problem`.
- For smart contracts to effectively replace traditional agreements, they must have the capability to interact with `real-world data`.
- Relying on a centralized Oracle for data transmission is inadequate as it reintroduces potential failure points. Centralizing data sources can undermine the trust assumptions essential for the blockchain functionality. Therefore, centralized nodes are not enough for external data or computation needs. `Chainlink` addresses these centralization challenges by offering a decentralized Oracle Network.

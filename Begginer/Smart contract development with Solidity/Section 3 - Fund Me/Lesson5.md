# Intro to oracles - getting real world price data

## Introduction
- With the rapid advancement of blockchain technology and the growing adoption of `decentralized finance platforms (DeFi)`, the necessity to support multiple digital currencies has significantly increased. Enabling users to utilize their preferred digital currencies extends market reach and improves the usability of an application.
- This lesson will walk you through adding a `currency conversion feature to the fundMe contract` and setting price thresholds with `Chainlink Oracle`, a decentralized network for external data.

## USD values
- Currently, our contract will require the transaction value to be greater than one Ethereum (ETH). If we want to give the users the flexibility to spend instead 5 USD, we would need to update our contract. We can begin by specifying the new value with a state variable ```uint256 public minimumUSD = 5``` at the top of the contract.



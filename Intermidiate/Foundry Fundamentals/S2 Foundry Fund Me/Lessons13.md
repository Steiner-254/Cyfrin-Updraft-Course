# Refactoring the mock smart contract pt.2
- ***Continuation of the tutorial on refactoring mock contracts in Solidity, focusing on creating network-agnostic smart contracts for easy deployment across multiple networks.***

## More refactoring
- One thing that we should do that would make our `getAnvilEthConfig` more efficient is to check if we already deployed the `mockPriceFeed` before deploying it once more.
- 

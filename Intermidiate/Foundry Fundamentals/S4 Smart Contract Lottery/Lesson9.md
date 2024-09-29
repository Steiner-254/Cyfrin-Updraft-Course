# Implementing Vrf Fulfil
- ***A comprehensive guide to implementing Chainlink VRF Fulfill - In this lesson, we dive deep into the world of Chainlink VRF (Verifiable Random Function) and how to implement the Fulfill functionality in Solidity smart contracts. We explore how to integrate Chainlink VRF into the Smart Contract Lottery.***

- To work with the `Chainlink VRF (Verifiable Random Function)` in Solidity, we need to inherit functions from an **abstract contract** called [`VRFConsumerBaseV2Plus`](https://github.com/smartcontractkit/chainlink-brownie-contracts/blob/12393bd475bd60c222ff12e75c0f68effe1bbaaf/contracts/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol). Abstract contracts can contain both defined and undefined functions, such as:

```solidity
function fulfillRandomWords(uint256 requestId, uint256[] calldata randomWords) internal virtual;
```

- 
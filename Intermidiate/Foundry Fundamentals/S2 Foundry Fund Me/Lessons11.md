# Refactoring the mock smart contract
- ***Comprehensive guide on refactoring mock smart contracts for local network testing, including deploying mock price feed contracts and overcoming common errors.***

## Solving the Anvil problem
- When we needed the Sepolia `priceFeed` we made sure that our deployments script pointed to it. How can we solve this in Anvil, because the contract that we need doesn't exist there. Simple, we deploy mocks.
- Our `getAnvilEthConfig` function in `HelperConfig` must deploy a mock contract. After it deploys it we need it to return the mock address, so our contracts would know where to send their calls.
- 

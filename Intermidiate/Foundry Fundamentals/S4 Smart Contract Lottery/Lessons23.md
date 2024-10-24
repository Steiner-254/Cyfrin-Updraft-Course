# Deploy a mock Chainlink VRF
- ***The focus of this lesson is on deploying a mock Chainlink VRF, vital for testing smart contracts. It provides insights into setting up mock contracts, adjusting parameters, and the importance of Chainlink VRF in blockchain development.***

## Chainlink VRF mock contract
- A `mock` contract is a type of smart contract used in testing and development environments to simulate the behavior of real contracts. It allows us to create controlled and predictable scenarios for testing purposes without relying on actual external contracts or data sources. Moreover, it facilitates testing using Anvil, which is extremely fast and practical in comparison to a testnet.
- In the last lesson, we stopped on `HelperConfig.s.sol`:

```javascript
function getOrCreateAnvilEthConfig()
    public
    returns (NetworkConfig memory anvilNetworkConfig)
{
    // Check to see if we set an active network config
    if (activeNetworkConfig.vrfCoordinator != address(0)) {
        return activeNetworkConfig;
    }
}
```

- We need to treat the other side of the `(activeNetworkConfig.vrfCoordinatorV2 != address(0))` condition. What happens if that is false?
- If that is false we need to deploy a mock vrfCoordinatorV2\_5 and pass its address inside a `NetworkConfig` that will be used on Anvil.
- Please use your Explorer on the left side to access the following path:

```javascript
foundry-smart-contract-lottery-cu/lib/chainlink/contracts/src/v0.8/vrf/
```

- 
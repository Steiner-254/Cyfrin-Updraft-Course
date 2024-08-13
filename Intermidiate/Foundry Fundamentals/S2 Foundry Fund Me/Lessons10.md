# Deploy a mock priceFeed
- ***Detailed guide on setting up a mocked environment for local testing of blockchain smart contracts, emphasizing the benefits and steps for creating mock contracts.***

## Testing locally
- In the previous lesson, we refactored our contracts to avoid being forced to use Sepolia every single time when we ran tests. The problem is we didn't quite fix this aspect. We made our contracts more flexible by changing everything for us to input the `priceFeed` address only once. We can do better!
- It is very important to be able to run our all tests locally. We will do this using a `mock contract`.


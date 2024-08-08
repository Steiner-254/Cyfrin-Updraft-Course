# Advanced deploy scripts
- ***Tutorial on writing advanced deploy scripts for smart contracts in Solidity, focusing on avoiding hardcoded contract addresses and making contracts more dynamic and adaptable.***

## Writing Deploy Scripts
- When we went straight to testing we left behind a very important element, deploy scripts. Why is this important you ask? Because we need a certain degree of flexibility that we can't obtain in any other way, let's look through the two files `FundMe.sol` and `PriceConverter.sol`, we can see that both have an address (`0x694AA1769357215DE4FAC081bf1f309aDC325306`) hardcoded for the AggregatorV3Interface. This address is valid, it matches the AggregatorV3 on Sepolia ... but what if we want to test on Anvil? What if we deploy on mainnet or Arbitrum? What then?
- The deploy script is the key to overcome this problem!
- 

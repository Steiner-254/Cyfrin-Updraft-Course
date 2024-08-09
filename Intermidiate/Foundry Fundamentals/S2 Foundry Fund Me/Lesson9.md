# Refactoring your tests
- ***Guide on refactoring tests for better efficiency and clarity, including updating price converter functions and deploying contracts on different networks with ease.***

## Refactoring code and test
- The way our code is currently structured is not that flexible. Given the hardcoded Sepolia address we cannot deploy to other chains, and if we wish to do so we would have to come and copy-paste another address everywhere throughout the code. In bigger codebases, with multiple addresses / other items to copy-paste for each deployment (in case we deploy on multiple chains) this update activity is extremely prone to error. We can do better.
- To fix this we can make our project more modular, which would help improve de maintainability, testing and deployment. This is done by moving the hardcoded changing variables to the constructor, thus regardless of the chain we deploy our contracts to, we provide the chain-specific elements once, in the constructor, and then we are good to go.
- Changing code without changing its functionality bears the name of **refactoring**.
- Do the following modifications in `FundMe.sol`
1. In the storage variables section create a new variable:

```
AggregatorV3Interace private s_priceFeed;
```

2. We need to add this as an input in our constructor and assign it to the state variable. This is done as follows:

```
constructor(address priceFeed){
    i_owner = msg.sender;
    s_priceFeed = AggregatorV3Interface(priceFeed);
}
```

3. Inside the `getVersion` function, where AggregatorV3Interface is invoked, replace the hardcoded address with the state variable s\_priceFeed:

```
    function getVersion() public view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(s_priceFeed);
        return priceFeed.version();
    }
```

4. In `PriceConverter.sol` modify the `getPrice` function to take an input `function getPrice(AggregatorV3Interface priceFeed) internal view returns (uint256) {` and delete the `AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);` line;
5. In the same library update `getConversionRate` to take a `priceFeed` input and update the first line to pass the required AggregatorV3Interface to the `getPrice` function:

```
    function getConversionRate(
        uint256 ethAmount,
        AggregatorV3Interface priceFeed
    ) internal view returns (uint256) {
        uint256 ethPrice = getPrice(priceFeed);
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1000000000000000000;
        // the actual ETH/USD conversion rate, after adjusting the extra 0s.
        return ethAmountInUsd;

    }
```

5. Back in `FundMe.sol` pass the s\_priceFeed as input for `getConversionRate` in the `fund` function.

- 
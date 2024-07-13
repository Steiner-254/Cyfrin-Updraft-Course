# Getting real world price data from Chainlink

## Introduction
- The `AggregatorV3Interface` provides a streamlined ABI for interacting with the Data Feed contract. In this lesson, we'll explore how to retrieve pricing information from it.

## Creating a New Contract Instance
- The `AggregatorV3Interface` includes the `latestRoundData` function, which retrieves the latest cryptocurrency price from the specified contract. We'll start by declaring a new variable, `priceFeed`, of type `AggregatorV3Interface`. This interface requires the address of the Data Feed contract deployed on the Sepolia Network.
```
AggregatorV3Interface priceFeed = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
```

## The `latestRoundData` Function
- We can call the `latestRoundData()` function on this interface to obtain several values, including the latest price.
```
function latestRoundData() external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```

- For now, we'll focus on the answer `value` and ignore the other returned values by using `commas` as placeholders for the unneeded variables.
```
function getLatestPrice() public view returns (int) {
    (,int price,,,) = priceFeed.latestRoundData();
    return price;
}
```

- Our `getLatestPrice()` function now retrieves the latest ETH price in USD from the `latestRoundData()` function of the Data Feed contract. The returned price is an int256 with a precision of 1e8, as indicated by the decimals function.

## Decimals
- `msg.value` is a uint256 value with 18 decimal places.
- `answer` is an int256 value with 8 decimal places (USD-based pairs use 8 decimal places, while ETH-based pairs use 18 decimal places).

- This means the price returned from our latestRoundData function isn't directly compatible with msg.value. To match the decimal places, we multiply price by 1e10:
```
return price * 1e10;
```

## Typecasting
- `Typecasting`, or type conversion, involves converting a value from one data type to another. In Solidity, not all data types can be converted due to differences in their underlying representations and the potential for data loss. However, certain conversions, such as from int to uint, are allowed.
```
return uint(price) * 1e10;
```

- We can finalize our `view` function as follows:
```
function getLatestPrice() public view returns (uint256) {
    (,int answer,,,) = priceFeed.latestRoundData();
    return uint(answer) * 1e10;
}
```

## Conclusion
- This complete `getLatestPrice` function retrieves the latest price, adjusts the decimal places, and converts the value to an unsigned integer, making it compatible for its use inside other functions.

## 🧑‍💻 Test yourself
1. 📕 Why we need to multiply the latest ETH price by 1e10?
- Answer:

>> We multiply the latest ETH price by 1e10 to convert it from 8 decimal places to 18 decimal places, matching Ethereum's `wei` scale.

2. 📕 What's the result of the typecasting uint256(-2)?
- Answer:

>> Typecasting uint256(-2) in Solidity results in a very large number due to underflow. Since uint256 represents an unsigned integer (cannot be negative) and has a range of 0 to 2^256 - 1, casting -2 converts it to the maximum value minus 1. This happens because when you typecast a negative number to an unsigned integer, the number wraps around the maximum value allowed for that type.

3. 🧑‍💻 Create a contract with a `getLatestBTCPriceInETH()` function that retrieves the latest BTC price in ETH.
- Answer:

```
// Ensure you have the Chainlink contracts library installed. You can do this by running: $ npm install @chainlink/contracts
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the Chainlink AggregatorV3Interface
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract BTCtoETHPriceOracle {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Mainnet
     * Aggregator: BTC/ETH
     * Address: 0xdeb288F737066589598e9214E782fa5A8eD689e8
     */
    constructor() {
        // Set the address of the BTC/ETH price feed
        priceFeed = AggregatorV3Interface(0xdeb288F737066589598e9214E782fa5A8eD689e8);
    }

    /**
     * Returns the latest BTC price in ETH
     */
    function getLatestBTCPriceInETH() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}

```
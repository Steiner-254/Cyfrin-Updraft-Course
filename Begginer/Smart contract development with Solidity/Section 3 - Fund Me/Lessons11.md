# Solidity math

## Introduction
- In this lesson, we will guide you through converting the value of ETH to USD. We'll use the previously defined `getPrice` function within the new `getConversionRate` function.

## The `getPrice` and `getConversionRate` Functions
- The `getPrice` function returns the current value of Ethereum in USD as a uint256.
- The `getConversionRate` function converts a specified amount of ETH to its USD equivalent.

## Decimal Places
- In Solidity, only integer values are used, as the language does not support floating-point numbers.
```
function getConversionRate(uint256 ethAmount) internal view returns (uint256) {
    uint256 ethPrice = getPrice(); 
    uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
    return ethAmountInUsd;
}
```

- 🗒️ NOTE

>> The line `uint256 ethAmountInUsd = (ethPrice * ethAmount)` results in a value with a precision of `1e18 1e18 = 1e36`. To bring the precision of ethAmountInUsd back to 1e18, we need to divide the result by 1e18.

## References
- https://uniswapv3book.com/milestone_2/math-in-solidity.html#:~:text=Due%20to%20Solidity%20not%20supporting,or%20less%20complex%20math%20calculations.

- https://medium.com/@solidity101/mastering-the-essential-math-for-solidity-development-4ebbf9da728e

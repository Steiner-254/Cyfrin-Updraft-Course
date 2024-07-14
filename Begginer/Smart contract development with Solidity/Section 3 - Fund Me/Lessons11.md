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

- 🔥 CAUTION

>> Always multiply before dividing to maintain precision and avoid truncation errors. For instance, in floating-point arithmetic, (5/3) * 2 equals approximately 3.33. In Solidity, (5/3) equals 1, which when multiplied by 2 yields 2. If you multiply first (5*2) and then divide by 3, you achieve better precision.

## Example of getConversionRate
- ethAmount is set at 1 ETH, with 1e18 precision.
- ethPrice is set at 2000 USD, with 1e18 precision, resulting in 2000e18.
- ethPrice * ethAmount results in 2000e18.
- To scale down ethAmountInUsd to 1e18 precision, divide ethPrice * ethAmount by 1e18.

## Checking Minimum USD Value
- We can verify if users send at least 5 USD to our contract:
```
require(getConversionRate(msg.value) >= MINIMUM_USD, "You need to spend more ETH!");
```



## References
- https://uniswapv3book.com/milestone_2/math-in-solidity.html#:~:text=Due%20to%20Solidity%20not%20supporting,or%20less%20complex%20math%20calculations.

- https://medium.com/@solidity101/mastering-the-essential-math-for-solidity-development-4ebbf9da728e

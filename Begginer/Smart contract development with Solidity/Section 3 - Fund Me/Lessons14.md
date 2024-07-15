# Creating your own libraries

## Introduction
- In the previous lesson, we used the `getPrice()` function and `getConversionRate`. These methods can be reused multiple times for anyone working with `Price Feeds`. When a functionality can be commonly used, we can create a `library` to efficiently manage repeated parts of codes.

## Libraries
- Great examples of Libraries can be found in the [Solidity by example website](https://solidity-by-example.org/library/). Solidity libraries are similar to contracts but do not allow the declaration of any state variables and cannot receive ETH.
- 👀❗IMPORTANT

>> All functions in a library must be declared as internal and are embedded in the contract during compilation. If any function is not marked as such, the library cannot be embedded directly, but it must be deployed independently and then linked to the main contract.

- We can start by creating a new file called PriceConverter.sol, and replace the contract keyword with library.
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
library PriceConverter {}
```

- Let's copy `getPrice`, `getConversionRate`, and `getVersion` functions from the `FundMe.sol` contract into our new library, remembering to import the `AggregatorV3Interface` into `PriceConverter.sol`. Finally, we can mark all the functions as `internal`.

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library PriceConverter {
 function getPrice() internal view returns (uint256) {
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    (, int256 answer, , , ) = priceFeed.latestRoundData();
    return uint256(answer * 10000000000);
 }

 function getConversionRate(uint256 ethAmount) internal view returns (uint256) {
    uint256 ethPrice = getPrice();
    uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1000000000000000000;
    return ethAmountInUsd;
    }
}
```

## Accessing the Library
- You can import the library in your contract and attach it to the desired type with the keyword `using`:
```
import {PriceConverter} from "./PriceConverter.sol";
using PriceConverter for uint256;
```

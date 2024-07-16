// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract USDToETHConverter {
    AggregatorV3Interface internal ethUsdPriceFeed;

    /**
     * Network: Mainnet
     * Aggregator: ETH/USD
     * Address: 0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419 (Mainnet ETH/USD price feed)
     */
    constructor() {
        ethUsdPriceFeed = AggregatorV3Interface(0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419);
    }

    /**
     * Returns the latest ETH price in USD
     */
    function getLatestETHPrice() public view returns (uint256) {
        (
            ,
            int price,
            ,
            ,
            
        ) = ethUsdPriceFeed.latestRoundData();
        // Chainlink price data has 8 decimal places, so we need to scale it to 18 decimal places
        require(price > 0, "Invalid price data");
        return uint256(price * 1e10);
    }

    /**
     * Converts a given amount of USD to its equivalent value in ETH
     * @param usdAmount The amount of USD to be converted (18 decimal places)
     * @return The equivalent value in ETH (18 decimal places)
     */
    function convertUsdToEth(uint256 usdAmount) public view returns (uint256) {
        uint256 ethPrice = getLatestETHPrice();
        // Ensure ethPrice is not zero to avoid division by zero
        require(ethPrice > 0, "ETH price must be greater than zero");

        // Convert the USD amount to ETH
        // Since both usdAmount and ethPrice are scaled to 18 decimals, we maintain precision
        uint256 ethAmount = (usdAmount * 1e18) / ethPrice;

        return ethAmount;
    }
}

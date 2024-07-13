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

// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 minimumUsd = 5;

    function fund() public payable {
        // Allow users to send $$
        // Have a minimum $$ spent
        // How do we send eth to this contract?
        require(msg.value >= minimumUsd, "Didn't Send Enough Eth"); // 1e18 = 1ETH = 1000000000000000000 Wei = 1000000000 Gwei
    }

    // function withdraw() public {}

    function getPrice() public view returns(uint256) {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI (Application Binary Interface)
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = priceFeed.latestRoundData();
        // Price of ETH in USD
        // 2000.00000000
        return uint256(price * 1e10);
    }

    function getConversionRate() public {}

    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}

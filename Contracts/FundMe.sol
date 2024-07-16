// SPDX-License-Identifier: MIT
// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    // we can use 5e18 or 5 * 1e18 or 5 * (10 * 18)
    uint256 minimumUsd = 5e18;

    // array list to get a list of funders sending funds to the contract
    address[] public funders;

    // mapping to look at how much each funder has sent
    mapping(address funder => uint256 amountFunded) public addressToAmountFunded;

    function fund() public payable {
        require(msg.value.getConversionRate() >= minimumUsd, "Didn't Send Enough Eth"); // 1e18 = 1ETH = 1000000000000000000 Wei = 1000000000 Gwei
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;
    }

    // function withdraw() public {}

}

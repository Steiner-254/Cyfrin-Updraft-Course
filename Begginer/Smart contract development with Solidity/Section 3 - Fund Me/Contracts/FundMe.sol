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
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public {
        // for loop - to reset all addresses to 0 once we have withdrawn the funds
        // [1, 2, 3, 4] elements
        //  0, 1, 2, 3 indexes
        // for(/*starting index, ending index, step amount*/)
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        // reset the array
        funders = new address[](0);
        // actually withdraw the funds

        // call
        // using "transfer"
        // msg.sender = address
        // payable(msg.sender) = payable address
        payable(msg.sender).transfer(address(this).balance);

        // using "send"
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        require(sendSuccess, "Send Failed");
    }

}

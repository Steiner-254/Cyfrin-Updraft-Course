// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {

    uint256 public myValue = 1;

    function fund() public payable {
        // Allow users to send $$
        // Have a minimum $$ spent
        // How do we send eth to this contract?
        myValue = myValue +2;
        require(msg.value > 1e18, "Didn't Send Enough Eth"); // 1e18 = 1ETH = 1000000000000000000 Wei = 1000000000 Gwei
    }

    // function withdraw() public {}
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RestrictedWithdrawal {
    address public firstRemixAccount;

    constructor() {
        // Set the first Remix account as the deployer of the contract
        firstRemixAccount = msg.sender;
    }

    // Function to withdraw all funds, restricted to the first Remix account
    function withdrawOnlyFirstAccountRemix() public {
        require(msg.sender == firstRemixAccount, "Not authorized");
        payable(firstRemixAccount).transfer(address(this).balance);
    }

    // Function to receive Ether into the contract
    receive() external payable {}

    // Function to check contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

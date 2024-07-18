// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherSender {
    
    // Function to send Ether using `call`
    function callAmountTo(address payable _to, uint256 _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Transfer failed.");
    }

    // Function to receive Ether into the contract
    receive() external payable {}

    // Function to check contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

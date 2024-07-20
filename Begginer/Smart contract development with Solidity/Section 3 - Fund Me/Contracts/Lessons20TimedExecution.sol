// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimedExecution {

    // Modifier to ensure function execution only after a specified time
    modifier onlyAfter(uint256 _time) {
        require(block.timestamp >= _time, "Function called too early.");
        _;
    }

    // Example function using the onlyAfter modifier
    function timedFunction(uint256 _time) public onlyAfter(_time) {
        // Function logic here
    }

    // Function to get the current block timestamp (for testing purposes)
    function getCurrentTime() public view returns (uint256) {
        return block.timestamp;
    }
}

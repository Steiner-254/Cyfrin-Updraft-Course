// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeMathTester {
    uint8 public bigNumber = 255; // This is checked

    function add() public {
        bigNumber = bigNumber + 1;
    }
}

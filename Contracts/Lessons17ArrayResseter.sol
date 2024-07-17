// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayResetter {
    uint256[] public arrayToReset;

    function expensiveReset() public {
        // Reset array using iteration method
        for (uint256 i = 0; i < arrayToReset.length; i++) {
            delete arrayToReset[i];
        }
    }
}

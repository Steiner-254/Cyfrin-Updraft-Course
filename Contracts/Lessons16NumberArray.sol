// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberArray {
    uint256[] public numbers;

    function pushNumbers() public {
        for (uint256 i = 1; i <= 10; i++) {
            numbers.push(i);
        }
    }
}

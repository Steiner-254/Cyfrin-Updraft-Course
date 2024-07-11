// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

// AddFiveStorage is a child contract
// SimpleStorage is a parent contract
contract AddFiveStorage is SimpleStorage {
    // +5
    // overrides
    // virtual override
    function store(uint256 _newNumber) public override {
        myfavoriteNumber = _newNumber + 5;
    }
}

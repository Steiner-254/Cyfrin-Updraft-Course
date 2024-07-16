// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

// AddFiveStorage is a child contract
// SimpleStorage is a parent contract
contract AddFiveStorage is SimpleStorage {
    // +5
    // overrides
    // virtual override
    // here when we store a number say 2, upon retrieving it, we get 7 retrieved
    function store(uint256 _newNumber) public override {
        myfavoriteNumber = _newNumber + 5;
    }
}

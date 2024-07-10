// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// using "import" to import contents from other files
// named import -> import {SimpleStorage} from "./SimpleStorage.sol"

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }
}

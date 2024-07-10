// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// using "import" to import contents from other files
// named import -> import {SimpleStorage} from "./SimpleStorage.sol"

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    // uint256 public favoriteNumber
    // type visibility name
    // SimpleStorage[] public listOfSimpleStorageContracts;
    address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // To Interact with other contracts one needs (Address & ABI Application Binary Interface)
        // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// using "import" to import contents from other files
import "./SimpleStorage.sol";

contract StorageFactory {

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}

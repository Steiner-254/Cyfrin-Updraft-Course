// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating our version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt= -88;
    address myAddress = 0x224225D920B2193c22313f9FE0a63571aE75B852;
    bytes32 favoriteBytes32 = "cat";
}
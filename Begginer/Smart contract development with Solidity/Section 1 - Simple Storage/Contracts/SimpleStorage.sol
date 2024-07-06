// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating our version(s)

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    // get's initialized to 0 if no value given
    uint256 public myfavoriteNumber; //0

    // uint256[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }
    // calldata, memory & storage
    // calldata and memory -> "temporary variables" while storage -> "permanent variable"
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        _name = "cat";
        listOfPeople.push( Person(_favoriteNumber, _name) );
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeMathTester {
    uint8 public bigNumber = 255; // This is checked

    function add() public {
        unchecked {bigNumber = bigNumber + 1;} // using the unchecked keyword
    }
}

// The Code Above Is Simmilar to the code below:

// SPDX-License-Identifier: MIT
// pragma solidity ^0.6.0;
//
// contract SafeMathTester {
//    uint8 public bigNumber = 255; // This is unchecked
//
//    function add() public {
//        bigNumber = bigNumber + 1;
//    }
//} 

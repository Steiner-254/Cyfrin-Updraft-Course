// SPDX-License-Identifier: MIT
// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

// creating custom errors (they save on gas costs)
error NotOwner();

contract FundMe {

    using PriceConverter for uint256;

    // we can use 5e18 or 5 * 1e18 or 5 * (10 * 18)
    // "constant" keyword is used to save on gas
    uint256 public constant MINIMUM_USD = 50 * 1e18;

    // array list to get a list of funders sending funds to the contract
    address[] public funders;

    // mapping to look at how much each funder has sent
    mapping(address funder => uint256 amountFunded) public addressToAmountFunded;

    // using "immutable" keyword to save on gas
    // we can use "i_owner" when using "immutable"
    address public immutable i_owner;

    // using constructor for access control "owner"
    // constructor sets the owner of the contract during deployment
    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value.getConversionRate() >= MINIMUM_USD, "Didn't Send Enough Eth"); // 1e18 = 1ETH = 1000000000000000000 Wei = 1000000000 Gwei
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public onlyOwner {
        // modify so that only the owner will call this function
        // in solidity we use ==
        // require(msg.sender == owner, "Must Be The Owner!"); - replaced by modifiers

        // for loop - to reset all addresses to 0 once we have withdrawn the funds
        // [1, 2, 3, 4] elements
        //  0, 1, 2, 3 indexes
        // for(/*starting index, ending index, step amount*/)
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        // reset the array
        funders = new address[](0);
        // actually withdraw the funds

        // // using "transfer" - uses 2300 gas max + throws error when it fails
        // // msg.sender = address
        // // payable(msg.sender) = payable address
        // payable(msg.sender).transfer(address(this).balance);

        // // using "send" - uses 2300 gas max + returns bool when it fails
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "Send Failed");

        // using "call" - gas used is never limited (uses all gas set) + does not require the ABI (most recommended for usage) + returns bool when it fails
        (bool callSucess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSucess, "Call Failes");
        revert();
    }

    // Modifier used here replaces "require(msg.sender == owner, "Must Be The Owner!");"
    // here we take the keyword "onlyOwner" and use it on other functions
    modifier onlyOwner() {
        // require(msg.sender == i_owner, "Sender Is Not Owner!");
        if(msg.sender != i_owner) {revert NotOwner();}
        // the "_;" can be before the require keyword or after... they have different meanings when before or after
        _;
    }

    // What happens if someone sends this contract ETH without calling the "fund" function
    receive() external payable {
        fund();
     }

     // fallback()
     fallback() external payable {
        fund();
      }

}

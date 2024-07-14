# Msg sender explained

## Introduction
- In this lesson, we will learn how to track addresses that are funding the contract and the amounts they will send to it.

## Tracking Funders
- To track the addresses are sending money to the contract, we can create an array of addresses named funders:
```
address[] public funders;
```

- Whenever someone sends money to the contract, we will add their address to the array with the push function:
```
funders.push(msg.sender);
```

- The `msg.sender` global variable refers to the address that initiates the transaction.

## Mapping Users to Funds Sent
- We can also map each funder's address to the amount they have sent using mappings. Let's define a mapping in Solidity:
```
mapping(address => uint256) public addressToAmountFunded;
```

- The `addressToAmountFunded` mapping associates each funder's address with the total amount they have contributed. When a new amount is sent, we can add it to the user's total contribution:

```
addressToAmountFunded[msg.sender] += msg.value;
```

## Conclusion
- We have successfully implemented a system to track users who fund the `fundMe` contract. This mechanism records every address that is sending ETH to the contract, and maps the sender's address to the total amount they have contributed.

## 🧑‍💻 Test yourself
1. 📕 Explain why we need to use the mapping `addressToAmountFunded` inside the fundMe contract
- Answer:

>> This helps to list users who funded the contract alongside with the amounts they funded to the contract.

2. 🧑‍💻 Implement a function `contributionCount` to monitor how many times a user calls the fund function to send money to the contract.
- Answer:

>> To implement a `contributionCount` function that monitors how many times a user calls the fund function to send money to the contract, you will need to keep track of the number of contributions each user makes. This can be achieved by using a mapping to store the contribution count for each address.

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContributionTracker {
    // Mapping to store the contribution count for each address
    mapping(address => uint256) public contributions;

    // Event to emit when a user funds the contract
    event Funded(address indexed contributor, uint256 amount);

    /**
     * Function to receive funds
     */
    function fund() public payable {
        require(msg.value > 0, "Contribution must be greater than 0");

        // Increment the contribution count for the sender
        contributions[msg.sender] += 1;

        // Emit the funding event
        emit Funded(msg.sender, msg.value);
    }

    /**
     * Function to get the contribution count for a specific address
     * @param contributor The address of the contributor
     * @return The number of times the address has funded the contract
     */
    function contributionCount(address contributor) public view returns (uint256) {
        return contributions[contributor];
    }
}
```

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

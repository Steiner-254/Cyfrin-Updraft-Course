# Sending ETH from a contract

## Introduction
- This lesson explores three different methods of sending ETH from one account to another: `transfer`, `send`, and `call`. We will understand their differences, how each one works, and when to use one instead of another.

## Transfer
- The `transfer` function is the simplest way to send Ether to a recipient address:
```
payable(msg.sender).transfer(amount); // the current contract sends the Ether amount to the msg.sender
```

- It's necessary to convert the recipient address to a `payable` address to allow it to receive Ether. This can be done by wrapping `msg.sender` with the `payable` keyword.
- However, transfer has a significant limitation. It can only use up to `2300 gas` and it reverts any transaction that exceeds this gas limit, as illustrated by [Solidity by Example](https://solidity-by-example.org/sending-ether/).

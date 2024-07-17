# Sending ETH from a contract

## Introduction
- This lesson explores three different methods of sending ETH from one account to another: `transfer`, `send`, and `call`. We will understand their differences, how each one works, and when to use one instead of another.

## Transfer
- The `transfer` function is the simplest way to send Ether to a recipient address:
```
payable(msg.sender).transfer(amount); // the current contract sends the Ether amount to the msg.sender
```

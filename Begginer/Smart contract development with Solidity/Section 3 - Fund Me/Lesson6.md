# Mid section recap

## Introduction
- From lessons 1 to 5 we've explored the usage of the keyword `payable`, the global property `msg.value` and what happens when a function reverts.

## payable, required, msg.value
- To enable a function to receive a native blockchain token such as Ethereum, it must be marked as `payable`:
```
function deposit() public payable {
 balances[msg.sender] += msg.value;
}
```

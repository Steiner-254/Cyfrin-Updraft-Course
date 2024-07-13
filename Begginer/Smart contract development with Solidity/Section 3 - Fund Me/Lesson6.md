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

- If we want a function to fail under certain conditions, we can use the `require` statement. For example, in a bank transfer scenario, we want the operation to fail if the sender does not have enough balance. Here's an example:
```
function transfer(address recipient, uint amount) public {
 require(balances[msg.sender] >= amount);
 balances[msg.sender] -= amount;
 balances[recipient] += amount;
}
```

- In this code, if the condition ```balances[msg.sender] >= amount``` is not met, the transaction will `revert`. This means the operation undoes any previous actions and will not consume the total maximum gas allocated by the user.
- The Solidity global property `msg.value` contains the amount of cryptocurrency sent with a transaction.

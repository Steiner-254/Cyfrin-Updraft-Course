# Solidity reverts

## Introduction
- In this lesson, we will delve into how do transaction reverts work, what is `gas` where is used.

## Revert
- Let's start by adding some logic to the `fund` function:
```
uint256 public myValue = 1;
function fund() public {
   myValue = myValue + 2;
}
```

- A `revert` action `undoes` all prior operations and returns the remaining gas to the transaction's sender. In this fund function, myValue increases by two (2) units with each successful execution. However, if a revert statement is encountered right after, all actions performed from the start of the function are undone. myValue will then reset to its initial state value, or one.

```
uint256 public myValue = 1;
function fund() public {
   myValue = myValue + 2;
   require(msg.value > 1e18, "didn't send enough ETH");
   // a function revert will undo any actions that have been done.
   // It will send the remaining gas back
}
```

## Gas Usage
- 🔥 CAUTION

>> The gas used in the transaction will not be refunded if the transaction fails due to a revert statement. The gas has already been consumed because the code was executed by the computers, even though the transaction was ultimately reverted.

- Users can specify how much gas they're willing to allocate for a transaction. In the case where the fund function will contain a lot of lines of code after the require and we did indeed set a limit, the gas which was previously allocated but not used will not be charged to the user

- 🗒️ NOTE

>> If a transaction reverts, is defined as `failed`.

## Transaction Fields
- During a `value` transfer, a transaction will contain the following fields:
1. `Nonce:` transaction counter for the account
2. `Gas price (wei):` maximum price that the sender is willing to pay per unit of gas
3. `Gas Limit:` maximum amount of gas the sender is willing to use for the transaction. A common value could be around 21000.
4. `To:` recipient's address
5. `Value (Wei):` amount of cryptocurrency to be transferred to the recipient
6. `Data:` 🫙 empty
7. `v,r,s:` components of the transaction signature. They prove that the transaction is authorised by the sender.

- During a contract interaction transaction, it will instead be populated with:
1. `Nonce:` transaction counter for the account
2. `Gas price (wei):` maximum price that the sender is willing to pay per unit of gas
3. `Gas Limit:` maximum amount of gas the sender is willing to use for the transaction. A common value could be around 21000.
4. `To:` address the transaction is sent to (e.g. smart contract)
5. `Value (Wei):` amount of cryptocurrency to be transferred to the recipient
6. `Data:` 📦 the content to send to the To address, e.g. a function and its parameters.
7. `v,r,s:` components of the transaction signature. They prove that the transaction is authorised by the sender.

## Conclusion
- `Reverts` and `gas usage` help maintain the integrity of the blockchain state. Reverts will undo transactions when failures occur, while gas enables transactions execution and runs the EVM. When a transaction fails, the gas consumed is not recoverable. To manage this, Ethereum allows users to set the maximum amount of gas they're willing to pay for each transaction.

## 🧑‍💻 Test yourself
1. 📕 Describe the two types of transactions listed in this lesson.
- Answer:
>> 1. `Value Transfer Transaction:` Transfers cryptocurrency with nonce, gas price, gas limit, recipient address, value, and signature.
>> 2. `Contract Interaction Transaction:` Similar but includes function data for smart contract interactions.
>> `Reverts` undo failed transactions, maintaining blockchain integrity.

2. 📕 Why are reverts used?
- Answer:

>> To undo failed transactions, maintaining blockchain integrity.

3. 🧑‍💻 Bob sets his gas price to 20 Gwei and his gas limit to 50,000 units. The transaction consumes 30,000 units of gas before a revert occurs. How much ETH will be effectively charged?
- Answer:

>> Bob will be effectively charged 0.0006 ETH for the reverted transaction.

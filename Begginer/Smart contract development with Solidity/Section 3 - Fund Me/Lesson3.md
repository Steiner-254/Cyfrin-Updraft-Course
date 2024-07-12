# Sending ETH through a function

## Introduction
- In this part, we'll explore how to transfer Ethereum (ETH) to a smart contract by creating a `fund` function. This function will require a minimum amount of ETH to ensure proper transaction handling.

## value and payable
- When a transaction it's sent to the blockchain, a `value` field is always included in the transaction data. This field indicates the amount of the native cryptocurrency being transferred in that particular transaction. For the function `fund` to be able to receive Ethereum, it must be declared payable. In the Remix UI, this keyword will turn the function red, signifying that it can accept cryptocurrency.
- Wallet addresses and smart contracts are capable of holding and managing cryptocurrency funds. These entities can interact with the funds, perform transactions, and maintain balance records, just like a wallet.

```
function fund() public payable {
    // allow users to send $
    // have a minimum of $ sent
    // How do we send ETH to this contract?
    msg.value;

    //function withdraw() public {}
}
```

- In Solidity, the value of a transaction is accessible through the `msg.value` property. This property is part of the global object `msg.` It represents the amount of `Wei` transferred in the current transaction, where `Wei` is the smallest unit of `Ether (ETH)`.

## 


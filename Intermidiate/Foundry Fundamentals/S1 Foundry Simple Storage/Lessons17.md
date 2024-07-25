# What is a transaction
- *Exploration of blockchain transactions, including a detailed overview of transaction components, contract deployment, and data fields in Ethereum*.

## More about blockchain transactions
- In the previous lesson we kept talking about transactions, but we never explained what a transaction is. In simple terms, a `transaction` *captures details of an activity that has taken place on a blockchain*. On the left side of your screen, in the Explorer tab, you'll find a folder called `broadcast`. Foundry saves all your blockchain interactions here. The `dry-run` folder is used for interactions you made when you didn't have a blockchain running (*remember that time when we deployed our contract without specifying an --rpc-url*). Moreover, the recordings here are separated by `chainId`.
- **Note:** The `chainId` is a unique identifier assigned to a specific blockchain network. It is used to distinguish one blockchain from another and is a crucial parameter for ensuring the security and integrity of transactions and interactions on the blockchain. Click on `run-latest.json`. Here we can find more details about the last deployment script we ran in our previous lesson. It will show things like `transactionType`, `contractName` and `contractAddress`. Moreover, in the `transaction` section, you can see what we actually sent over to the RPC URL:

```
"transaction": {
"from": "0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266",
"to": null,
"gas": "0x714e1",
"value": "0x0",
"input": "0x608060...c63430008130033",
"nonce": "0x0",
"chainId": "0x7a69",
"accessList": null,
"type": null
}
```

- Let's go through each of these:
>> - `from` is self-explanatory, it's the address we used to sign the transaction;
>> - `to` is the recipient, in our case is null or address(0), this is the standard destination for when new smart contracts are deployed;
>> - `gas` is the amount of gas spent. You will see the hex value 0x714e1 (or any other value represented in hex format);

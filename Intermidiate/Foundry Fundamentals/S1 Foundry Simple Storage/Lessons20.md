# Interact with a smart contract using the CLI
- *Comprehensive guide on interacting with smart contracts using CLI and Foundry's Cast tool, detailing command usage for sending transactions and reading blockchain data.*.

## Interacting With Contract Addresses via Command Line & Foundry's Cast Tool
- This lesson builds on top of previous lessons where we deployed `SimpleStorage` via `forge script`. We have `Anvil` running and the smart contract is deployed. Copy the contract address.

## Sending information to the blockchain
- Foundry has an in-built tool known as `Cast`. `Cast` comes loaded with numerous commands to interact with. Learn more about them by typing `cast --help`. One such useful command is `send` which is designed to sign and publish a transaction. To view help about `send`, type cast `send --help`.
- To use send we need a `signature` and some arguments. Please call the following in your terminal: ***Note:*** Down below use the address you copy-pasted from your terminal, there's a chance it will be different than the one mine was deployed. 
```
cast send 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "store(uint256)" 1337 --rpc-url $RPCURL --private-key $PRIVATEKEY
```

- What did we just do? Let's break it down:

>> - `cast send` is the command we used to sign and publish our transaction;
>> - `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266` or any other address is the target of our cast send, the contract we are interacting with;
>> - `"store(uint256)"` is the signature of the function we are calling.
>> - `1337` is the number we pass to the store function. As we can see in the function signature, we are expected to provide an uint256 input. You can obviously provide any number you want, as long as it fits uint256.
>> - you already know what `--rpc-url $RPC_URL --private-key $PRIVATE_KEY` are. The place where we send and the private key we use to sign.

## Reading information from the blockchain
- `Cast` conveniently provides a way to read information stored on the blockchain. Type `cast call --help` in your terminal to find out more. It works similarly to send, where you have to provide a `signature` and some arguments. The difference is you are only peering into the storage, not modifying it. Call the following command in your terminal:

```
cast call 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "retrieve()"
```

- We receive back the following: 
```
0x0000000000000000000000000000000000000000000000000000000000000539
```
- This represents a `hex` value. In the previous lessons, we learned how to convert this to a normal number. 
- Type the following command in your terminal:
```
cast --to-base 0x0000000000000000000000000000000000000000000000000000000000000539 dec
```
- And surprise, surprise, `1337` came back. I recommend you play around and send multiple transactions with different numbers and then read them from the blockchain. Awesome! We've learned something very valuable. You are going to use this more times than you can count. Up next: ***Deploying a smart contract on Sepolia.***

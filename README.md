# Cyfrin-Updraft-Course
>> Cyfrin-Updraft-Course

## Practical Foundry Smart Contracts
- [Full Foundry FundMe Project](https://github.com/Steiner-254/Foundry-FundMe-Project/tree/main)

- [Foundry Contracts Are Found In This Repo](https://github.com/Steiner-254/foundry-f23)

## Summary
- This are personal notes for the course am taking on `Cyfrin Updraft Course`.
- The course deals with blockchain development and security auditting.

- Notes:
>> To previews markdown, use [Ctr + Shift + V]

>> For Italics use: * word *

>> For Bold use: ** word **

## Quick Notes On Creating & Compiling Smart Contracts In Foundry
- Creating a Foundry project on cmd, use the following commands:
>> Command for biulding or compiling:

```
forge compile
```

1. Initiate the project
```
forge init
```

2. Biuld and Compile smart contracts in the project
```
forge build
```

or 

>> I prefer `forge compile`

```
forge compile
```

3. After making changed in the smart contracts, run `forge test` to test the updates or run a script using `forge script`
```
forge test
```

or

```
forge script
```

4. Run anvil command to list all fake available accounts ready for testing purposes:
```
anvil
```

## Build
```
cd ~/foundry-f23/foundry-simple-storage-f23
```

```
 forge create SimpleStorage --interactive
```

## Deploying smart contract locally using `anvil`
```
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```

## Sending Information On The Blockchain
```
cast send 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "store(uint256)" 1337 --rpc-url $RPC_URL --private-key $PRIVATE_KEY
```

```
cast call 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "retrieve()"
```

```
cast --to-base 0x0000000000000000000000000000000000000000000000000000000000000539 dec
```

## Deploying a smart contract on testnet (Sepolia)
```
forge script script/DeploySimpleStorage.s.sol --rpc-url=$SEPOLIA_RPC_URL --private-key=$PRIVATE_KEY --broadcast
```

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Notes
- ***On Replay Attacks i.e Double Spending***:
>> - `nonce` is a unique identifier assigned to each transaction sent from a specific account. The nonce is used to ensure that each transaction is processed only once and to prevent replay attacks. nonce is incremented with every single transaction;

- ***Terms***
>> - RPC -> Remote Procedure Call (RPC) URL
>> - Naas -> Node As A Service ...such as Alchemy.

- *Happy Web3 Revolution*

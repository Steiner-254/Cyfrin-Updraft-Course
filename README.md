# Cyfrin-Updraft-Course
>> Cyfrin-Updraft-Course

## Practical Foundry Smart Contracts
- [Foundry Contracts Are Found In This Repo](https://github.com/Steiner-254/foundry-f23)

## Summary
- This are personal notes for the course am taking on `Cyfrin Updraft Course`.
- The course deals with blockchain development and security auditting.

- Notes:
>> To previews markdown, use [Ctr + Shift + V]

>> For Italics use: * word *

>> For Bold use: ** word **

## Quick Notes On Creating & Compiling Smart Contracts In Foundry
- Creating a Foundry project on cmd, use the following command:
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

### Build
```
cd ~/foundry-f23/foundry-simple-storage-f23
```

```
 forge create SimpleStorage --interactive
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

- *Happy Web3 Revolution*

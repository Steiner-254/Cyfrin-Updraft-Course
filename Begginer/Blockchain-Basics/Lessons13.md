# Gas in depth

## Transactions and Gas
- In this lesson we're going to take a an even closer look at gas, how it functions and the purpose it serves on the blockchain.
- Don't stress if this topic sounds complex; gas can absolutely be a confusing topic, but the more experience you gain and more examples we go through, it'll start to become clear.

>> Note: What we're covering here is applicable to Ethereum post implementation of [EIP-1559](https://eips.ethereum.org/EIPS/eip-1559) wherein gas limits, priority fees and the discussed burn mechanism were all introduced.

## Transaction Breakdown
- Before we continue, there are a couple important terms to understand.

>> `Wei: 1,000,000,000 Wei = 1 Gwei (Gigawei)`

>> `Gwei: 1000,000,000 Gwei = 1 Eth`

1. `Transaction Fee:` This is calculated as Total Gas Used * Gas Price where Gas Used represents the computational units required to perform the work and Gas Price is comprised of a Base and Priority Fee

2. `Gas Limit:` This is the maximum amount of gas allowed for the transaction. This can be set by the user prior to sending a transaction.
In Metamask, you can navigate to Market > Advanced > Edit Gas Limit in order to set this value.

3. Base Gas Fee: The base fee of a transaction, represented in Gwei. Remember, this is cost per gas.
- There are a couple important points to note regarding the Base Fee

>> The fee is burnt as of EIP-1559. Burning serves to remove the value from circulation, combating inflation on the protocol. The amount burnt can be seen beneath the Base Fee in the image above.

>> The fee is dynamic, under EIP-1559, if a block is more than 50% full, the Base Gas Fee is increased for the next block. Likewise, if a block is less then 50% full, the fee decreases. This serves to balance network demand and capacity.

4. Max Gas Fee: This is the maximum cost per cast the transaction has been configured to allow. This can again be configured prior to sending a transaction.

5. Max Priority Fee: Again, configurable prior to sending a transaction, this represents the maximum tip we're willing to give miners. This incentivizes the inclusion of our transaction within a block.

6. Block Confirmations: These are he number of blocks which have been mined or validated which have been confirmed to contain your transaction. The more confirmations the more sure we can be of the transaction's validity.

##

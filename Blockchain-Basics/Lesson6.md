# Introduction To Gas
- In this lesson, we will discuss important concepts ranging from transaction fees and gas prices, mining incentives, computational measures in transactions, to hands-on experience of sending a transaction in Ethereum’s test network.
Let's jump right in!

## Transaction Fee and Gas Price: What are they?
- While inspecting an Ethereum transaction, two terms invariably catch the glance: "transaction fee" and "gas price". Let's clarify what they are and why they matter.

>> The transaction fee is the amount rewarded to the block producer for processing the transaction. It is paid in Ether or GWei. 

>> The gas price, also defined in either Ether or GWei, is the cost per unit of gas specified for the transaction. The higher the gas price, the greater the chance of the transaction being included in a block.

- Gas price is not to be confused with gas. While gas refers to the computational effort required to execute the transaction, gas price is the cost per unit of that effort.
- When we click on "more details" in a transaction overview, we can see further information including the gasLimit and Usage by transaction.

## The Role of Nodes in Blockchain
- Blockchains are run by a group of different nodes, sometimes referred to as miners or validators, depending on the network. These miners get incentivized for running the blockchain by earning a fraction of the native blockchain currency for processing transactions. For instance, Ethereum miners get paid in Ether, while those in Polygon get rewarded in MATIC, the native token of Polygon. This remuneration encourages people to continue running these nodes.

## Understanding Gas in Transactions
- In the context of transactions, gas signifies a unit of computational complexity.
- The higher a transaction's complexity, the more gas it requires. For instance, common transactions like sending Ether are less complex and require relatively small amounts of gas. However, more sophisticated transactions like minting an NFT, deploying a smart contract, or depositing funds into a DeFi protocol, demand more gas due to their complexity.
- The total transaction fee can be calculated by multiplying the gas used with the gas price in Ether (not GWei). Therefore, Transaction fee = gasPrice * gasUsed.

## Hands-on: Sending an Ethereum Transaction
- In any blockchain, making a transaction requires the payment of a transaction fee (in terms of the native token) to the blockchain nodes processing that transaction. Let's take an example of a transaction using the MetaMask extension, a popular Ethereum wallet.
- Here are the steps:
1. Open MetaMask and click "Expand View".
2. Choose the account to use for the transaction.
3. Click on "Send".
4. Select "Transfer between my accounts".
5. Enter the account to send the Ether to, and the amount you wish to send.
6. Click "Next". MetaMask will automatically calculate the gas fee for you. The total amount to be paid is the sum of the Ether value you're sending and the gas fee.

- Something of note, if you click the market link in Metamask, you'll be shown some optional settings for gas in the transaction. You may wonder Why would I choose to spend more gas?

## References
- https://github.com/Cyfrin/foundry-full-course-f23

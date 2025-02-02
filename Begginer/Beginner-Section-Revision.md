# Topics Covered In The Recap
- [Youtube Tutorial Reference](https://www.youtube.com/watch?v=umepbfKp5rI)

``

⭐️ (0:00:00) | Lesson 0 | Welcome to the Course

⭐️ (0:13:54) | Lesson 1 | Blockchain Basics

⭐️ (2:10:42) | Lesson 2 | Welcome to Remix - Simple Storage

⭐️ (3:29:58) | Lesson 3 | Storage Factory

⭐️ (4:09:08) | Lesson 4 | Fund Me

⭐️ (6:00:00) | Lesson 5 | AI Prompting

⭐️ (6:22:58) | Lesson 6 | Foundry Simple Storage

``

## 0. Welcome to the Course
- Learn... Learn... Practice... Execute & Make Monies In 2025 :)

## 1. Blockchain Basics
- https://youtu.be/umepbfKp5rI?t=960
- [Bitcoin Whitepaper](https://bitcoin.org/bitcoin.pdf)
- [Ethereum Whitepaper](https://ethereum.org/en/whitepaper/)
- **The Oracle Problem** in the context of blockchain and smart contracts refers to the challenge of integrating external data into these systems in a trustless manner. Smart contracts are designed to be autonomous and self-executing, but they rely on external data sources, known as oracles, to function properly. The issue arises because these oracles can be centralized and thus introduce a point of failure or manipulation, undermining the decentralized and trustless nature of blockchain technology.
- Everything  we do in life, is either an agreement or a contract in some aspect.
- **Decentralised exchanges (DEXs)** - are peer-to-peer marketplaces where cryptocurrency traders can make transactions directly without handing over management of their funds to an intermediary or custodian. These transactions are facilitated through the use of smart contracts, which are self-executing agreements written in code.
- Examples of DEXs include UniSwap e.t.c
- Smart Contracts solve current world trust issues.
- Smart Contracts bring unbrakable promises.
- Bitcoin was the fisrt protocol to pick the Blockchain Technology and push it into mainstream.
- Chainlink allows developers to develop **Hybrid Smart Contracts** that link the onchain and off-chain.
- Decentralised Networks offers transparency and flexibility. 
- Speed & Efficiency - On transactions done on the blockchain networks. This is because all the transactions happen instantly.
- Smart Contracts are Immutable - they cannot be changed once deployed. 
- Security - To takeover data in the blockchain, one needs to takeover almost all the nodes which is quite impossible.
- DeFi = Decentralised Finance
- NFTs = Non-Fungible Tokens
- Using metamask to make transations.
- Loosing access to the `Secret Phrase`, results in loosing all your funds.
- Testing and Simulations of smart contracts should be done on local test networks that does not involve real money.
- `Sepolia` is one of the main `Ethereum` testnets for developers.
- [Sepolia Testnet](https://sepolia.etherscan.io/)
- Adding different networks to `Metamask`.
- The complex your transaction is, the more gas you have to pay.
- Distributed Blockchain - Peer 2 Peer.
- Nodes get paid for mining blocks.
- Gas Rewards & EIP 1559.
- **Consensus** - is the mechanism used to agree on the state of the Blockchain.
-  Consensus is broken down into 2 types:
1. Chain Selection
2. Sybil Restistance

- 2 types of `Sybil Resistance` include:
1. `PoW` - Proof of Work
2. `PoS` - Proof of Stake

- `Sybil Attack` is when one node tries to manipulate the decentralised network thinking that it's several nodes but it's actually one node.
- `51% Attack` is when a group of network occupies 51% of the network making it able to move the network to a given direction.
- `Proof Of Work` costs a lot of electricity.
- `Proof Of Stake` uses much less energy.

## 2. Welcome to Remix - Simple Storage
- Create accounts on `Ethereum Stack Exchange`, `ChatGPT`, `Phind` and even `DeepSeek-R1`.
- *`Repetition Is The Mother Of Skill!`*
- [Remix IDE](https://remix.ethereum.org/)
- Remix has a lot of features that allows us to interact with smart contracts.
- Remix is used by top auditors and developers in the web3 space.
- Solidity Syntax.
- Always comment your code.
- Basic Data Types.
- Have a good format that does not make the code look ugly.
- Solidity Arrays & Structs.
- `Public`, `Private` and `Internal`.
- Arrays are the same as arrays of any other language.
- **What is a Struct in Solidity** - A struct in Solidity is a user-defined data type that allows you to group variables of different data types into a single unit. This structure acts as a container for various types of data, making it easier to manage and pass around complex data sets within your smart contracts. For example, you can define a struct to represent a book with attributes like title, author, and book ID.
- Dynamic arrays grow often as compared to Static arrays.
- AI Prompt Engineering - using AI to get tasks solved.
- Calldata, Memory & Storage.
- Mapping.
- Etherescan to check the transactions of a given address carried out.
- Deploying Smart Contracts from Remix to real `Sepolia Testnet`.
- `View` and `Pure` functions don't send transactions.

## 3. Storage Factory
- Deploying a smart contract from another smart contract.
- `new` keyword helps solidity know the contract to deploy.
- Importing smart contracts.
- `Named Importing` is the best way to import smart contracts.
- Solidity Versions should be compatible.
- Interacting with contracts `ABI - Application Binary Interface`.
- MIT License in the solidity smart contract.
- `Inheritance` in solidity smart contracts.
- `Overrides` in solidity smart contracts.
- `Virtual`keyword makes the function `Overridable`.

## 4. Fund Me
- `Remix Fund Me` project.
- We will be developing a crowdsourcing smart contract (to be used by a crowdsourcing application - way of getting money).
- We will any native cryptocurrency to be sent to this contract.
- When bilding a smart contract, first write down the goals to achieve.
- A function must be payable - `payable` inorder to receive and store funds.
- `require` keyword makes a specific condition to be met in the smart contract.
- If you send a failed transaction you will have to use gas.
- Every transaction has `Transaction Fields`.
- Getting real world price data from `Chainlink`.
- `msg.value` - here is the amount to be sent in the smart contract.
- `The Oracle Problem` - this is where Chainlink and Oracles come in play.
- Chainlink Data Feeds (such as Price Feeds) gathers data and delivers that data to onchain for smart contracts to use.
- Examples: 

>> https://data.chain.link/feeds/ethereum/mainnet/eth-usd

- Chainlink VRF - Verifiable Random Function -- used in lotteries, gamings e.t.c
- Chainlink Keepers
- Chainlink Functions
- Understand how to interact with smart contract functions.
- Use AI to help in debugging the smart contracts and also in understanding how the smart contracts work.
- Use AI such as ChatGPT to solve smart contract errors while programming.
- Getting prices from chainlink.
- Sending a failed transaction results in spending gas.
- 
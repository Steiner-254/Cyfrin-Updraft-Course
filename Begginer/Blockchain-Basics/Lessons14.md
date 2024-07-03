# Blockchain Overview

## Traditional Networks vs Blockchain
- Traditionally, when you run an application be it a website or something that connects to a server you are interacting with a centralized entity. This is the opposite of what you may recall from our distributed blockchain example, in that the server is controlled and run by a single centralized group.
- Blockchains, as we saw, run on a network of independent nodes. In our previous example, each of the Peers was representative of an independent node operator. The term node typically refers to a single instance of a decentralized system, Peer A would be a node. This network, this combination of these nodes interacting with each other is what creates a blockchain. What makes these networks so potent, is that anybody can join. All anyone needs is a little bit a hardward and you can participate in securing a blockchain network. You could go to GitHub and start operating a node in a few seconds!
- In the traditional world applications are run by centralized entities and if that entity goes down or is malicious or decides that they want to shut off - they just can. They're the ones that control everything.
- Blockchains, by contrast, don't have this problem. If one node or one entity that runs several nodes goes down, since there are so many other independent nodes running, it doesn't matter, the blockchain and the system will persist so long as there is at least one node always running. Luckily for us, the most popular chains like Bitcoin and ethereum have thousands and thousands of nodes. Malicious nodes are kicked from the network, or even punished in some cases. Majority rules when it comes to the blockchain.
- This gives blockchains this incredibly potent immutability trait where nothing can be changed or corrupted so in essence we can think of a blockchain as a decentralized database. In the case of Ethereum it has an extra additional feature where it also can do computation in a decentralized manner now.

## Consensus
- Let's talk consensus. This includes Proof of Work and Proof of Stake. You've probably heard these terms before and they're really important to how these blockchains work.
The mining feature of our previous blockchain example was an example of Proof of Work
- `Proof of Work` and `Proof of Stake` fall under this umbrella of consensus and consensus is a really important topic when it comes to blockchains.

>> `Consensus` is defined as the mechanism used to reach an agreement on the state or a single value on the blockchain especially in a decentralized system.

- Very roughly, a consensus protocol in a blockchain or decentralized system can be broken down into two pieces a chain selection algorithm and a sybil resistance mechanism. Mining, or Proof of Work, is a sybil resistance mechanism. This is what Bitcoin currently uses.
- Proof of Work is known as a sybil resistance mechanism because it defines a way to figure out who is the block author or which node did the work to mine a block. Sybil resistance is a blockchain's ability to defend against users creating a large number of pseudo-anonymous identities to gain a disproportionately advantageous influence over said system.
- As mentioned, there are two primary types of sybil resistance:

>> - Proof of Work
>> - Proof of Stake

##

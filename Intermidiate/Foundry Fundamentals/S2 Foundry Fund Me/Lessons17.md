# Calculate Withdraw gas costs
- ***This lesson focuses on reducing gas consumption in Ethereum smart contracts. It explains how to evaluate gas costs, understand Anvil's zero gas-price, and utilize Solidity's built-in functions to optimize gas usage. The goal is to make contract execution more economical.***

## About that Gas everyone is so passionate about
- Gas refers to a unit that measures the computational effort required to execute a specific operation on the network. You can think of it as a fee you pay to miners or validators for processing your transaction and storing the data on the blockchain.
- An important aspect of smart contract development is making your code efficient to minimize the gas you/other users spend when calling functions. This can have a serious impact on user retention for your protocol. Imagine you have to exchange 0.1 ETH for 300 USDC, but you have to pay 30 USDC in gas fees. No one wants to pay that. It's your duty as a developer to minimize gas consumption.

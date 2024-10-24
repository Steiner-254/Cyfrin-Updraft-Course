# Using vm.roll and vm.wrap
- ***Exploring the use of \`vm.roll\` and \`vm.wrap\` in smart contract testing, this lesson demonstrates how to adjust block time and number for testing various states and transitions in smart contracts.***

## ### vm.roll and vm.wrap

- In lesson 19, we skipped testing one of the four steps of `enterRaffle`: ``2. We check if the `RaffleState` is `OPEN`;``

- To rephrase it, a user should not be able to enter if the `RaffleState` is `CALCULATING`.

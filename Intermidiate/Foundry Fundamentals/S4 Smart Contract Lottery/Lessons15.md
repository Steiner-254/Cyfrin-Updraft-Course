# The CEI method - Checks, Effects, Interactions
- ***An overview of the Checks-Effects-Interactions pattern for secure and efficient smart contract development.***

## The Checks-Effects-Interactions (CEI) Pattern
- A very important thing to note. When developing this contract Patrick is using a style called `Checks-Effects-Interactions` or `CEI`.
- The Checks-Effects-Interactions pattern is a crucial best practice in Solidity development aimed at enhancing the security of smart contracts, especially against re-entrancy attacks. This pattern structures the code within a function into three distinct phases:

>> **Checks:** Validate inputs and conditions to ensure the function can execute safely. This includes checking permissions, input validity, and contract state prerequisites.

>> **Effects:** Modify the state of our contract based on the validated inputs. This phase ensures that all internal state changes occur before any external interactions.

>> **Interactions:** Perform external calls to other contracts or accounts. This is the last step to prevent reentrancy attacks, where an external call could potentially call back into the original function before it completes, leading to unexpected behavior. (More about reentrancy attacks on a later date)

- 
# Smart contract lottery - Project setup
- ***Introduction to building an advanced lottery or raffle smart contract, covering key features like Chainlink automation and random number generation.***

### Getting Started
- Prepare yourself because this next project will be extremely awesome!
- For the project, we'll be working with an advanced lottery or raffle smart contract. This won't just be an exercise in coding, but a chance to learn more about:

>> * Events;

>> * On-chain randomness (done the proper way);

>> * Chainlink automation

>> * And many more!

- Please follow Patrick's presentation on the project we are going to build. Marvel at how good the code looks, pay attention to code structure, Natspec comments and all the other cool features.
- Hopefully, that sparked your interest. Now let's get cooking!

### Setup
- We are going to start a new foundry project. You already know how to do that, it would be great if you could do this on your own and then come back and compare your work to what's presented below. With that out of the way, please call the following commands in your terminal:

```javascript
mkdir foundry-smart-contract-lottery-f23
cd foundry-smart-contract-lottery-f23
code .
```

- Inside the new VSCode instance, in the terminal, we are going to init our Foundry project:

```javascript
forge init
```

- Please delete all the `Counter` files that are populated by default when we initiate a new Foundry project.
- A good practice at this stage in your project is to come up with a plan/blueprint. What do we want to do with this? What is the main functionality of the project? In the root folder create a file called `README.md` (if Foundry created one for you just delete its contents), you obviously know what this file must look like from the previous courses, but before we get there, let's just outline a simple plan.
- Open the `README.md`:

```javascript

# Proveably Random Raffle Contracts

## About

This code is to create a proveably random smart contract lottery.

## What we want it to do?

1. Users should be able to enter the raffle by paying for a ticket. The ticket fees are going to be the prize the winner receives.
2. The lottery should automatically and programmatically draw a winner after a certain period.
3. Chainlink VRF should generate a provably random number.

4. Chainlink Automation should trigger the lottery draw regularly.
```

- We will introduce the Chainlink integrations in future lessons. For now, remember that we will use the Chainlink VRF service to obtain a random number, an operation that is harder than you think in the absence of a Chainlink VRF-like service. We are going to use Chainlink Automation to schedule and trigger the lottery draw programmatically.

### Let the development begin!
- Inside the `src` folder create a file named `Raffle.sol`. Inside the newly created file, we start our new project as always:
```javascript
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Raffe{
    

}
```

- As you might know already having a strong NATSPEC is a key element in developing a nicely structured and readable smart contract. Let's create a NATSPEC description above the contract declaration line:
```javascript

/**
 * @title A sample Raffle Contract
 * @author Patrick Collins (or even better, you own name)
 * @notice This contract is for creating a sample raffle
 * @dev It implements Chainlink VRFv2 and Chainlink Automation
 */
contract Raffle{
    

}
```

- 
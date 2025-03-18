# Phase 1: Scoping
- ***Puppy Raffle Code Base, Git & Foundry Installation, Testing Coverage, Security View, Exploits.***

### Puppy Raffle Scoping
- Now that you've **definitely** tried reviewing the codebase on your own, let's start scoping things out together.
- Take a look at the **[Puppy Raffle Repo](https://github.com/Cyfrin/4-puppy-raffle-audit)**'s README

### README Overview
- This README looks pretty good. We've got all the expected sections and necessary details.
- Remember the things we're looking for:

* **About**
* **Setup**
* **Scope**
* **Compatibilities**
* **Roles**
* **Known Issues**



- Moving on, we should take notice of the **Compatibilities** section.
- That Solc version is strange - definitely make note of it.
- Finally, they've also outlined the Roles of the protocol for us. Knowing this intended functionality is important in being able to spot when things go wrong.

* Owner - Deployer of the protocol, has the power to change the wallet address to which fees are sent through the changeFeeAddress function.
* Player - Participant of the raffle, has the power to enter the raffle with the enterRaffle function and refund value through refund function.

- There are no _known_ issues. Hehe.

### Wrap Up
- Things are looking great so far, the protocol has provided us with lots of documentation to get started with. We've even spotted an oddity already.
- In the next lesson we'll begin using our tools to spot vulnerabilities before we even start.

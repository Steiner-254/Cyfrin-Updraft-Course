# Phase 1: Scoping
- ***Puppy Raffle Code Base, Git & Foundry Installation, Testing Coverage, Security View, Exploits.***

#
git clone https://github.com/Cyfrin/4-puppy-raffle-audit.git
cd 4-puppy-raffle-audit.git
make
```

>> Take a brief look at your `Makefile`. It's worthwhile to appreciate what it's actually doing. Our `Makefile` cleans our repo, installs necessary packages (Foundry, OpenZeppelin and base64) and then runs `forge build` to compile everything.

### Testing
- Once we've run our `make` command, we should check out the protocol tests. I like to start by running `forge coverage` to see what kind of baseline we're starting with.
- Thing's don't look great.
- From a competitive audit point of view, this might be exciting, there are lots of opportunities for bugs to be hiding in this codebase.
- If we were doing a private audit, we're less optimistic. Poor test coverage is indicative of an immature codebase and we're responsible for securing this protocol!

### README Continued
- Further down the README we see the scope details. Invaluable information.
- By using the command `git checkout <commitHash>` we can assure our local repo is the correct version to be auditing.
- We also see exactly which contracts are under review.

```js
./src/
└── PuppyRaffle.sol
```

- Moving on, we should take notice of the **Compatibilities** section.
- That Solc version is strange - definitely make note of it.
- Finally, they've also outlined the Roles of the protocol for us. Knowing this intended functionality is important in being able to spot when things go wrong.

* Owner - Deployer of the protocol, has the power to change the wallet address to which fees are sent through the changeFeeAddress function.
* Player - Participant of the raffle, has the power to enter the raffle with the enterRaffle function and refund value through refund function.

- There are no _known_ issues. Hehe.

### Wrap Up
- Things are looking great so far, the protocol has provided us with lots of documentation to get started with. We've even spotted an oddity already.
- In the next lesson we'll begin using our tools to spot vulnerabilities before we even start.

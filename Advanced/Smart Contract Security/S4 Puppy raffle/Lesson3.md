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

- We should see clear instructions under **[Getting Started](https://github.com/Cyfrin/4-puppy-raffle-audit#getting-started)** on how to get set up locally.

```bash
git clone https://github.com/Cyfrin/4-puppy-raffle-audit.git
cd 4-puppy-raffle-audit.git
make
```

>> Take a brief look at your `Makefile`. It's worthwhile to appreciate what it's actually doing. Our `Makefile` cleans our repo, installs necessary packages (Foundry, OpenZeppelin and base64) and then runs `forge build` to compile everything.

### Testing
- Once we've run our `make` command, we should check out the protocol tests. I like to start by running `forge coverage` to see what kind of baseline we're starting with.

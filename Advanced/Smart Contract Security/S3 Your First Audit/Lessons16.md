# Writing an amazing finding: Proof of code
- ***Writing a proof of code to indisputably prove the vulnerabilities we've found!***

### The report so far:

### \[S-#] Storing the password on-chain makes it visible to anyone and no longer private

**Description:** All data stored on chain is public and visible to anyone. The `PasswordStore::s_password` variable is intended to be hidden and only accessible by the owner through the `PasswordStore::getPassword` function.

I show one such method of reading any data off chain below.

**Impact:** Anyone is able to read the private password, severely breaking the functionality of the protocol.

**Proof of Concept:**

**Recommended Mitigation:**

### Proof of Code/Concept
- Our report is looking great, but the next section, `Proof of Code/Concept`, is imperative. Let's go over how we programmatically prove the claim we're making - that anyone can read the protocol's stored password.
- First we need a local chain running.

```bash
anvil
```

>> Note: Most PoC's won't require a local blockchain

- Next we need to deploy our protocol, fortunately, PasswordStore has a `make` command set up for us. Note that their deploy script is setting the password `myPassword` in the process. Open a new terminal and run the following.

```bash
make deploy
```

- Foundry allows us to check the storage of a deployed contract with a very simple `cast` command. For this we'll need to recall to which storage slot the `s_password` variable is assigned.
- With this consideration we can run the command `cast storage <address> <storageSlot>` like this (_your address may be different_).

```bash
cast storage 0x5FbDB2315678afecb367f032d93F642f64180aa3 1
```

- We should receive an output similar to this:
```Solidity
`0x6d7950617373776f726400000000000000000000000000000000000000000014`
```

- 
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

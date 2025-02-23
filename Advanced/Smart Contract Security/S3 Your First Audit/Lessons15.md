# Writing an amazing finding: Description
- ***Writing a description for our report detailing all the necessary information about our discovered vulnerability.***

### The report so far:

### \[S-#] Storing the password on-chain makes it visible to anyone and no longer private

**Description:**

**Impact:**

**Proof of Concept:**

**Recommended Mitigation:**

- Alright, `title` done. What's next? Let's take a look at description and impact.

### Description
- Our goal here is to describe the vulnerability concisely while clearly illustrating the problem. A description for our finding here might look like this.

```md
**Description:** All data stored on chain is public and visible to anyone. The s_password variable is intended to be hidden and only accessible by the owner through the getPassword function.
I show one such method of reading any data off chain below.
```

- 

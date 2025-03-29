# Tooling: Slither
- ***Tooling in Smart Contract Auditing, Patrick Introduces Static Analysis. Using Slither by Trail of Bits to find bugs without executing code.***


>> **Note:** In addition to Slither, you may need to install **[Python](https://www.python.org/downloads/)**, if you haven't.

- Once installed ensure everything is up-to-date with:

```bash
pip3 install --upgrade slither-analyzer
```

### Running Slither
- The Slither documentation outlines usage for us. Slither will automatically detect if the project is a Hardhat, Foundry, Dapp or Brownie framework and compile things accordingly.
- In order to run slither on our current repo we just use the command:

```bash
slither .
```

- This execution may take some time, depending on the size of the codebase. If we run it on Puppy Raffle, we're going to get a _massive_ output of potential issues.
- The output color codes potential issues:

* **Green** - Areas that are probably ok, may be `informational` findings, we may want to have a look
* **Yellow** - Potential issue detected, we should probably take a closer look
* **Red** - Significant issues detected that should absolutely be addressed.

- Here's an example of what some of these look like:

### Wrap Up
- By leveraging Slither, audits become more efficient, making it a fantastic tool for developers who are looking to minimize the time they spend on debugging and maximize their protocol's security.

>> Always remember, static analysis tools enhance our security review, they don't replace our manual efforts!

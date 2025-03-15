# Tooling: Slither
- ***Tooling in Smart Contract Auditing, Patrick Introduces Static Analysis. Using Slither by Trail of Bits to find bugs without executing code.***

### Leveraging our Tools
- Auditing smart contracts is an arduous yet essential task in the blockchain realm. To facilitate this process, there are excellent tools to help auditors catch bugs efficiently. In this post, we'll explore two popular static analysis tools that can significantly speed up the auditing process: Slither and Aderyn. Having knowledge of these tools isn't just beneficial for auditors — anyone aiming to be a top developer should consider these tools as an essential part of their toolbox.

## Static Analysis - Boosting Your Auditing Efficiency
- Static analysis is a method where code is checked for potential issues without actually executing it. Essentially, it's a way to "debug" your code by looking for specific keywords in a certain order or pattern.
- The most widely used tools for this purpose include **[Slither](https://github.com/crytic/slither)**, developed by the **[Trail of Bits](https://www.trailofbits.com/)** team, and a Rust-based tool that we've developed known as **[Aderyn](https://github.com/Cyfrin/aderyn)**.

>> **Note**: It's important to remember that these tools should be run before going for an audit.

### Slither - A Python-Powered Static Analysis Tool
- Slither tops the charts as the most popular and potentially the most potent static analysis tool available. Built using Python, it offers compatibility with both Solidity and Vyper developments. An open-source project, Slither allows developers to add plugins via PR.
- The Slither repo provides instructions on installation and usage.
- I want to bring your attention to the **[Detectors](https://github.com/crytic/slither/wiki/Detector-Documentation)** section of the documentation.
- This document lists _all_ the vulnerabilities that Slither is checking for and recommendations for them.
- This could have helped us with PasswordStore! It's easy to see how valuable these tools can be in making our work easier and more efficient.

### Installing Slither
- We won't go over the specifics of installation in this course. As intermediate developers, we should have some familiarity with this process.
- Choose the installation method that works best for you (Options outlined here), and if you run into issues don't hesitate to ask an AI like **[Phind](https://www.phind.com/search?home=true)** or **[ChatGPT](https://chat.openai.com)**. They're great at debugging installation problems.

>> **Note:** In addition to Slither, you may need to install **[Python](https://www.python.org/downloads/)**, if you haven't.

- Once installed ensure everything is up-to-date with:

```bash
pip3 install --upgrade slither-analyzer
```


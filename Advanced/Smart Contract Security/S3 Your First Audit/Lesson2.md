# Scoping: Etherscan
- ***Learn why test suites and deployment frameworks are important prerequisites in a security review/audit. REKT Test discussed as an evaluation tool.***

## Phase 1: Scoping
- In this lesson, we'll examine the initial steps of performing a security review using our PasswordStore codebase. I'm going to take a deep-dive into the scoping phase, which is the primary step in conducting a security review.

### The Scoping Phase and Initial Review
- The scoping phase is the point we initially receive a codebase for review and we perform a high level assessment.
- Imagine a scenario like this:
```js
_CLIENT: "Hi, we're the PasswordStore dev team looking to get our codebase audited ASAP to get it listed officially."_

_AUDITOR: "Hi PasswordStore, I'm beginner-auditor. Really excited to help. Could you send your codebase to me?"_

_CLIENT: "Sure, here's the etherscan link to our codebase."_ _**[PasswordStore CodeV1](https://sepolia.etherscan.io/address/0x2ecf6ad327776bf966893c96efb24c9747f6694b)**_
```

- This exchange is all too common, and it's horrible. It's your responsibility as a security researcher to not audit codebases provided to you in this way.

>> Why?

- As security researchers, you're looking for more than bugs. You're looking for code maturity. If all you have is a codebase on etherscan, if there's no test suite, if there's no deployment suite you should be asking: `how mature is this code?`

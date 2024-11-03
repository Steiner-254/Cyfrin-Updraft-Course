
>> ***Notes ahead of planning to be a perfect Web3 Security Auditor:***

## 1. Introduction && Review
- Have a perfect auditting IDE (VS Code or VS Codium)
- Understand the protocol best practices.
- Understand the current state of Web3 security.
- Understand solidity auditting tools such as Slither, Mythril
- Understand Fuzzing & Invariants
- Understand the format of smart contracts such as ERC20's, ERC721's
- Understand smart contract's ABI's
- Understand upgradable contracts
- Understand self destruction

## 2. What is a smart contract audit?
- Phases of a security review:

```Solidity
1. Initial Review
        a. Scoping
        b. Reconnaissance
        c. Vulnerability identification
        d. Reporting
2. Protocol fixes
        a. Fixes issues
        b. Retests and adds tests
3. Mitigation Review
        a. Reconnaissance
        b. Vulnerability identification
        C. Reporting
```

- Overview of the audit process:

>> **Get Context**: Understand the project, its purpose and its unique aspects.

>> **Use Tools**: Employ relevant tools to scan and analyze the codebase.

>> **Manual Reviews**: Make a personal review of the code and spot out unusual or vulnerable code.

>> **Write a Report**: Document all findings and recommendations for the development team.

- Use checklists to determine if the protocol is ready for auditting as shown below:
![alt text](<Advanced/Smart Contract Security/S2 Whats Is A Smart Contract Audit/Images/image.png>)

- Use Security Tools various smart contract auditing tools, including static analysis tools like Slither and Aderyn, fuzzing methods, formal verification, and AI.
- Static analysis using tools like `Slither`, `4nalyzer`, `Mythril`, and `Aderyn`.
- There's a great GitHub repo by ZhangZhuoSJTU that illustrates examples of bugs that are detectable by machines and those that aren't. Check it out **[here](https://github.com/ZhangZhuoSJTU/Web3Bugs)**.
- When the protocol is hacked the auditor should not be blamed.
- Have an attacker's mindset and also the defending mindset too.
- Subscribe to web3 security blogs and news.
- Learn from public hacks and understand the exploits.
- Play a couple of `CODEHAWKS` first flights - they don't have bounties but are the best for learning.

## 3. Your First Audit | PasswordStore
- Scoping phase - (do not accept scope links inform of etherscan links as this shows that the program is not ready for the security review).
- Protocol readiness is key as shon in the `Rekt Test`.
- Protocol should have `test suites` in their github repo as part of their readiness in the code.
- Make sure the protocol has the Rekt Test fully covered:
- Validate the scope before beggining the audit.
- The client should be able to fill out the **[questionnaire](https://github.com/Cyfrin/3-passwordstore-audit/blob/onboarded/minimal-onboarding-filled.md)** we provided them. Then we're finally ready to give them the `Security Review` of their protocol.
- Get to know the following:
1. What's inscope
2. Number of lines of code + codebase complexity
3. If there has ever existed a security review previously
4. Known vulnerabilities
5. How to setup the project
6. Exact commit-hash to audit
7. Roles in the system and their privileges
8. Documentation of the protocol

- Clone and setup the correct repo to audit.
- Using **[CLOC](https://github.com/AlDanial/cloc)** to know the `number of lines` in a codebase.
- Use tools and frameworks you are similar with.
- Use `solidity metrics` extension on VS Code.
- Read the docs and documentation to understand the protocol.
- Create a file named `notes.md` to take notes for potential `attack vectors` and own thoughts about the project `my thoughts about the project`.
- Take notes while reading the documentation in a format that can be easily seen such as `pragma solidity 0.8.18; // Q: Is this the correct compiler version?` as this can be easily retrieved as shown below:
![alt text](<Advanced/Smart Contract Security/S3 Your First Audit/Images/image copy 9.png>)
- Have a look at the code from the top, starting from the license to the solidity compiler version downwards.
- Read the `natspec` comments as they play a role of extended documentation.
- Use `// I` for `informational` findings in creating comments.
- For unclear documentation, leave questions for the client such as `// Q What's this function do?`
- Use `headers` to name state variables, events, e.t.c
- `s_` means storage variables.
- 
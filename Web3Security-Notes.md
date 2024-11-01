
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
- 
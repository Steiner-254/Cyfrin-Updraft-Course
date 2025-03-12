
>> ***Notes ahead of planning to be a perfect Web3 Security Auditor:***

## Smart Contract Auditting Tips
- Analyze loops and arrays to detect DoS vulnerabilities.
- Analyze the (CEI) Check-Effects-Interactions for `Rentrancy Vulnerabilities`.
- There's a **[GitHub Repo](https://github.com/pcaversaccio/reentrancy-attacks)** maintained by Pascal (legend) that catalogues re-entrancy attacks which have occurred, good to have the case studies init.
- `Rentrancy Vulnerability Case Study:` https://medium.com/@zhongqiangc/smart-contract-reentrancy-thedao-f2da1d25180c
- 


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

[**Initial Review**] 

**1. Scoping**
- Always do security reviews/audits on `dev isolated environments` using `docker containers`.
- In the project `README.md` file, remember and check for the things we're looking for:
* **About**
* **Setup**
* **Scope**
* **Compatibilities**
* **Roles** - role in the project and their privileges.
* **Known Issues**
- Observe the `make` file and see what it has. If possible run it.
- About the project - Knowledge about the project and its business logic is crucial. This can be attained from the project documentation.
- Stats of the project - Information about the size of the codebase, how many lines of code are in scope, and its complexity are incredibly vital.
>> `sudo apt install cloc` # Debian, Ubuntu installation.

>> `cloc ./src/` using cloc alongside the folder to count lines of code.
- Using `solidity metrics` tool for scoping and understanfing the application logic.
- Using `solidity metrics` tool understand how functions operate and how calls are made. This helps in finding attack vectors of the smart contract.
- Using `solidity visual developer` tool for scoping. This tool provides syntax highlighting in your code based on variable types
- Setup - how to build and test the project, which frameworks they've used etc.
- Review Scope (inscope and out of scope).
- Compatibilities - Information about the solidity version the client is using, the chains they plan on working with, and the tokens they will be integrating.
- Roles - This entails understanding the different roles and powers within the system and detailing what the different actors should and shouldn't be able to do.
- Known issues - Understanding existing vulnerabilities and bugs which are already being considered/fixed. Now focus on the hidden issues.

**2. Reconnaissance**
- Read the docs and have a general understanding of what the protocol does (you can create `Notes.md` file and have custom notes on what the protocol does).
- Use `solidity metrics` tool to read and understand the code and what it actually does.
- Pay special attention to the functions marked `public` or `external`. Especially those which `modify state` or are `payable`. These are going to be certain potential attack vectors.
- Have deep and closer looks at the `NatSpecs` and `Comments`.
- Scoping Out The Files.
- When reading the code, start from the main entry of the protocol.
- Immutable variables such as `i_entranceFee, ENTRANCE_FEE` should be initialised in the constructor.
- Run `static analysis tools` such as `slither - $ slither.` for solidity and `aderyn` for rust projects/protocols.
- Create a file named `Noted.md` and have notes concerning `About the project in my own words` and also the `Attack vectors of the projct`.
- Use tags for infomational issues upto the vulnerability issues such as `@audit - i` for informational, `@audit - low` for low issues, `@audit - medium` for medium issues and `@audit - high` for high issues.
- Make notes about the project code such as `s_owner` is a storage variable. Do the same for other parts of the code such as `events`, `constructor` e.t.c
- Enure you read comments that have been coded alongside the project code.
- Check if the tests cover all the logic and functions of the protocol. Tests should also check what the functional logic should not doo such as (function for owner setting password -- we should have a test that checks in non-owners too can set passwords).
- Run `forge coverage`, and if perfomance is poor, then there is a high chance of finding more security vulnerabilities.

**3. Vulnerability identification**
- Use all tools and tactics here to detect the vulnerabilities.
- Keeping close with the recon process will help in detecting vulnerabilities.
- Create a file named `findings.md` that will have quick documentation and summaries of the detected vulnerabilities.
- `Static Analysis` by use of tools such as in solidity - `Slither` and in rust `Aderyn`.
- Slither command `slither .` - this runs static analysis in the whole project.
- Aderyn command `aderyn .` - this runs static analysis in the whole project (you can run it on a solidity project too).
- Slither will automatically detect if the project is a Hardhat, Foundry, Dapp or Brownie framework and compile things accordingly.

**4. Reporting**
- Title must be (`root cause` + `impact`) such as: `Storing the password on-chain makes it visible to anyone, and no longer private`
- Create a cool description that describes the vulnerability, vulnerable variables. Always mention the contract that the vulnerable variables exist such as `PasswordStore::s_password`. Below is an example of a robust description:
```md
**Description:** All data stored on chain is public and visible to anyone. The `PasswordStore::s_password` variable is intended to be hidden and only accessible by the owner through the `PasswordStore::getPassword` function.
I show one such method of reading any data off chain below.
```
- Impact should be clear and real such as:
```md
**Impact:** Anyone is able to read the private password, severely breaking the functionality of the protocol.
```
- `Proof Of Concept` or `Proof Of Code` proves that the issue submitted is a real issue. Quite advantageous on competetive audits and bug bounty programs.
- Create a working `Proof Of Concept` with steps and document it on the report. You can attach screenshots and videos if possible.
- For the POC, one can just add the valid fuzz `test` created for the vulnerability.
- Use AI to polish your reports. In this, you need a better prompt such as:
```js
The following is a markdown write-up of a finding in a smart contract codebase, can you help me make sure it is grammatically correct and formatted nicely?

---
PASTE-REPORT HERE
---
```
- Severity rating of the vulnerability.
- To get severity of the vulnerability think of it in terms of user experience - _how pissed off would users be if an attack happened?_
- This is how severity and titles are labelled:
```md
### [H-1] Storing the password on-chain makes it visible to anyone and no longer private

### [H-2] `PasswordStore::setPassword` has no access controls, meaning a non-owner could change the password

### [I-1] The 'PasswordStore::getPassword` natspec indicates a parameter that doesn't exist, causing the natspec to be incorrect
```
- ***Timeboxing*** redo another review on the protocol incase you might have missed anything.


## Example of a perfect report
- Example of a perfect report:

### [S-#] Storing the password on-chain makes it visible to anyone, and no longer private

<details>
<summary><strong>Storing the password on-chain makes it visible to anyone (Click to expand)</strong></summary>

**Description:**
- All data stored on chain is public and visible to anyone. The `PasswordStore::s_password` variable is intended to be hidden and only accessible by the owner through the `PasswordStore::getPassword` function.
- I show one such method of reading any data off chain below.

**Impact:**
- Anyone is able to read the private password, severely breaking the functionality of the protocol.

**Proof of Concept:**
The below test case shows how anyone could read the password directly from the blockchain. We use foundry's cast tool to read directly from the storage of the contract, without being the owner.

1. Create a locally running chain
```bash
make anvil
```

2. Deploy the contract to the chain
```bash
make deploy
```

3. Run the storage tool
   - We use 1 because that's the storage slot of s_password in the contract.
```bash
cast storage <ADDRESS_HERE> 1 --rpc-url http://127.0.0.1:8545
```

You'll get an output that looks like this:
```
0x6d7950617373776f726400000000000000000000000000000000000000000014
```

You can then parse that hex to a string with:
```bash
cast parse-bytes32-string 0x6d7950617373776f726400000000000000000000000000000000000000000014
```

And get an output of:
```
myPassword
```

**Recommended Mitigation:**
- Due to this, the overall architecture of the contract should be rethought. One could encrypt the password off-chain, and then store the encrypted password on-chain. This would require the user to remember another password off-chain to decrypt the stored password. However, you're also likely want to remove the view function as you wouldn't want the user to accidentally send a transaction with this decryption key.

</details>


## More Notes:
- To practice on several exploits use the **[sc-exploits-minimized](https://github.com/Cyfrin/sc-exploits-minimized)** repo as shown in the image below:
![alt text](<Advanced/Smart Contract Security/S3 Your First Audit/Images/image copy 14.png>)

- The **[sc-exploits-minimized](https://github.com/Cyfrin/sc-exploits-minimized)** repo also has vulnerability based CTFs to solve and improve exploitation skills.

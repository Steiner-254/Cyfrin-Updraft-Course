# Scoping: Audit Details
- ***Exploring the codebase, examining contracts in scope for audit, starting with PasswordStore.sol - simple, key concepts for Solidity & smart contract security.***

### Getting Started
- Alright! Starting off, our client has graciously updated the codebase for this security review, featuring an improved framework and enhanced verbosity in their **[Security Review CodeV2](https://github.com/Cyfrin/3-passwordstore-audit)**.
- Exploring the new codebase, we find it to be comprehensive with an `src` folder and a script detailing deployment procedures. However, as we dig in, we find that the README needs refinement and tailoring to our needs rather than the template Foundry README. There is also a glaring omission — there are no test folders.
- In addition to this, we're not really sure what we should be focusing on in our review. It's unlikely the client wants us auditing libraries, or scripts - but these are vital things to confirm with them in the scoping phase before beginning the audit.

# "The Tincho"
- ***Learn how the legendary Tincho approaches his audits in this overview of his systematic technique, brought to us by Tincho himself!***

### Reconnaissance
- We've finally scoped out our client's code base and we're ready to dive into looking more closely at the code.
- To do this, we're going to learn some best practices and a technique I've dubbed `The Tincho` from the master himself - Tincho Abbate.

### Introducing Tincho
- Tincho is a legend in Web3 security and is a member of **[The Red Guild](https://theredguild.org/)**, a smart contract and EVM security firm. He was a previous lead auditor for the security firm at `OpenZeppelin` and he even helped me create this course!
- We're lucky to have Tincho walk us through his high-level way to approach security reviews.
- _What follows is derived from a video featuring Tincho's point of view_

### The Tincho Auditing Method
- To illustrate the Tincho auditing method, we're going to refer to a video where Tincho performs a live auditing of the Ethereum Name Service (ENS).

>> "I don't have a super formal auditing process. I will just show you briefly some things that I do..." - Tincho

### First Step
- First thing's first - download the code, and **read the documentation**. You need to familiarize yourself with the content and context of the codebase, learn the jargon you can expect to see in the code and become comfortable with what the protocol is expected to do.

**READ THE DOCUMENTATION**

### Tools and Frameworks
- Tincho describes a number of tools he uses while performing security reviews, bring the tools you're most familiar and best with.

* **VS Codeium**: a text editor with a privacy focus. It's based on VS Code but removes a lot of the user tracking telemetry
* **Foundry**: As a framework for reviewing codebases Foundry is incredibly fast and allows for quick testing with it's robust test suite
* **CLOC**: A simple command-line utility that helps count lines of code which can give a sense of the complexity of different parts of the codebase.
* **Solidity Metric**: Another tool developed by `Consensys` that provides useful metrics about your Solidity codebase.

- By leveraging `CLOC` and `Solidity Metrics`, a security researcher can organize the codebase by complexity and systemically go through the contracts - marking them each complete as appropriate. This pragmatic approach ensures no stone is left unturned.
- It's recommended to start with the smaller and more manageable contracts and build upon them as you go.
- There's a point in an audit where your frame of mind should switch to an adversarial one. You should be thinking _"How can I break this..."_
![alt text](<Images/image copy 3.png>)

- Given even simple functions like above, we should be asking ourselves

>> * **"Will this work for every type of token?"**

>> * **"Have they implemented access control modifiers properly?"**

- 
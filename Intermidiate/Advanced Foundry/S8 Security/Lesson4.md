# Top security tools
- ***Overview of various security tools used by professionals for smart contract auditing, including their roles and effectiveness.***

### Top Tools used by Security Professionals
- Welcome back! Now that you have a basic understanding of what a `smart contract audit` involves, let's take a deeper look into the `auditing` process employed by security professionals and some of the tools they use to secure your code.
- Being aware of the tools available in this space will even give you as developers the opportunity to employ them _during_ development. Security isn't something you can just tack onto the end of a development cycle as is best approached as a foundational consideration from the very start of development.
- A couple useful GitHub repos I'll point out straight away include:

>> * **[solcurity](https://github.com/transmissions11/solcurity)**

>> * **[simple-security-toolkit](https://github.com/nascentxyz/simple-security-toolkit)**

- These are great avenues to ensure your protocol is ready for an audit. The latter even includes an **[audit-readiness-checklist](https://github.com/nascentxyz/simple-security-toolkit/blob/main/audit-readiness-checklist.md)** to help you prepare.

### The Audit Process
- There's no silver bullet and each individual audit may be slightly different from the last, but here's a general outline of the process a protocol will undergo when under audit.

>> *` Manual Review`
   * -- Go through the Code & Docs
   * -- Understand what the protocol should do

>> * `Using Tools`

- Manual Review is arguably ***_the most important_*** aspect of an audit. Reading the documentation and gaining context of the protocol and how it should behave. Taking the time to properly gain context can save a tonne of confusion later. Remember, most bugs are _business logic_ related, meaning it isn't actually an error in the code that causes a problem, but some inaccurate implementation of what _should_ happen.

- For example:

```js
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract CaughtWithTest {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber + 1;
    }
}
```

- Technically, there's nothing wrong with this code. It would only be through reading the documentation that you'd learn `setNumber` should set `number` to `newNumber` and not `newNumber + 1`.

### Tools

Let's talk about some of the tools security professionals and developers have in their toolbox.

1. **Test Suites:** This is the first line of defence and why we placed such an emphasis on them throughout the course. All of the most popular development frameworks include test suites, use them, use them often, catch those bugs.

2. **Static Analysis:** Static analysis is the process of checking code for issues without executing anything. Popular entries here include **[Aderyn](https://github.com/Cyfrin/aderyn)**, **[Slither](https://github.com/crytic/slither)** and **[Mithril](https://github.com/Consensys/mythril)**

3. **Fuzz Testing:** a specific test suite methodology involving providing random data as inputs during testing.

   Two variantions exist including stateless and stateful fuzz testing. Stateless fuzz tests abandon the result of a previous test before running a new test, with a new contract state. Stateful, conversely will remember the ending state of one run and use this as the starting start for the next fuzz run.

4. **Differential Testing:** We don't cover this in depth, but the idea is to write code in multiple ways and compare the results to eachother to ensure validity.

5. **Formal Verification:** Formal Verification is a generic term for applying formal methods to verify the correctness of a system.

   Applying formal methods pertains to anything based on mathematical proofs, these are mathematical expressions that solve for the soundsness and validity of a system, a proof of correctness, or whether or not a bug _must_ exist. ie Symbolic Execution.

   Examples of Formal Verification tools include **[Manticore](https://github.com/trailofbits/manticore)**, **[Halmos](https://github.com/a16z/halmos)**, **[Certora](https://www.certora.com/prover)** and even the `Solidity Compiler`.

   There's a great article hosted by hackmd that compares many of these tools and how they work, I encourage you to **[check it out](https://hackmd.io/@SaferMaker/EVM-Sym-Exec)**.

6. **AI Tools:** These can be hit or miss, but are absolutely evolving quickly. Any developer can find value in leveraging tools like Copilot, or state of the art models suchs a GPT4o, in their process.

   These tools, I would say, aren't yet reliable enough to be depended upon, but they can go a long way towards helping to quickly understand the context of codebases or summarizing/clarifying documentation. Don't rely on them, but keep AI tooling on your radar.

### Testing Some Tools
- Now that we have some understanding of the tools used by security professionals, let's see a couple of them in action. For our purposes in this section we'll be using the **[denver-security](https://github.com/PatrickAlphaC/denver-security)** GitHub repo. Begin by cloning it locally.

```bash
git clone https://github.com/PatrickAlphaC/denver-security.git
code denver-security
```

- Once open in it's own instance of VSCode, we should see a number of contracts contained within the `src` folder. Each of these is named in reference to the type of tool or test which is meant to catch the bug hidden inside.

```bash
├── src
│   ├── CaughtWithFuzz.sol
│   ├── CaughtWithManualReview.sol
│   ├── CaughtWithSlither.sol
│   ├── CaughtWithStatefulFuzz.sol
│   ├── CaughtWithSymbolic.sol
│   └── CaughtWithTest.sol
```

- To start with one the the simpler onces, `CaughtWithManualReview.sol`, this bug is meant to be identified simply by reviewing the code manually.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CaughtWithManualReview {
    /*
     * @dev adds 2 to numberToAdd and returns it
     */
    function doMath(uint256 numberToAdd) public pure returns(uint256){
        return numberToAdd + 1;
    }

    // We should write a test for every issue we find during manual review!
}
```

- By reading the comments/documentation provided, we can see that this function is not behaving as expected.
- Let's look at `CaughtWithTest.sol`. This is a contract we've seen before.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CaughtWithTest {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        // Whoops, this isn't right!
        number = newNumber + 1;
    }
}
```

- 
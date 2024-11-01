# Security Tools
- ***Discover various smart contract auditing tools, including static analysis tools like Slither and Aderyn, fuzzing methods, formal verification, and AI.***

## Tools for Security Reviews
- Let's overview some of the tools we'll be using while performing security reviews. As we progress in the course, you'll get more hands on experience with how they work!

### Your First Line of Defense: Test Suites
- Your classic test suite is your project's first line of defense. These are your frameworks like Foundry, Hardhat, Brownie, Apeworx - even Remix has tests.

>> _Rest in Peace Truffle_ 😢

- This course covers some really robust test suites that you can model your tests after and we'll talk more about the concept of `test coverage` a little later on.

## Static Analysis: Debugging Without Execution
- Static analysis represents the next level of defense. This method automatically checks for issues without executing your code, hence the debugging process remains `static`. Slither, 4nalyzer, Mythril, and Aderyn are some prominent tools in the static analysis category.
- Throughout this course, we'll work heavily with Slither and Aderyn, you'll become experts at these static analysis options.

## Fuzz Testing: Randomness Meets Tests
- Next we have Fuzz testing, which really comes in two flavours, `fuzz testing` and `stateful fuzz testing`.
- A few other types of testing we _won't_ be covering are `differential test` and `chaos tests`, but in an effort to further you security journey, you always want to be looking for new looks and expanding your knowledge, so you may want to check them out.


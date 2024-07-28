# Introduction to smart contracts testing
- ***A guide on testing smart contracts using the \`forge test\` command and the \`counter.t.sol\` example, emphasizing the importance of test-driven development in programming.***

## Analyzing the Counter contracts
- Continuing from the previous lesson, the `forge --init` populated our project with the Counter files.

## Counter.sol
- It's a simple smart contract that stores a number. You have a function to `setNumber` where you specify a `newNumber` which is a `uint256`, and store it, and you have a function to increment the number. Note: `number++` is equivalent to `number = number + 1`.

## Counter.s.sol
- Just a placeholder, it doesn't do anything. 

## 
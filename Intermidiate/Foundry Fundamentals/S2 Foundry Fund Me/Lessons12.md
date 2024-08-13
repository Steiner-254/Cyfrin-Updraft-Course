# How to refactor magic number
- ***Explanation of the concept of magic numbers in Solidity code, their drawbacks, and strategies for avoiding them to maintain code readability and efficiency.***

## Magic numbers or `What was this exactly?`
- Magic numbers refer to literal values directly included in the code without any explanation or context. These numbers can appear anywhere in the code, but they're particularly problematic when used in calculations or comparisons. By using magic numbers you ensure your smart contract suffers from `Reduced Readability`, `Increased Maintenance Difficulty` and `Debugging Challenges`. You also make your work extremely prone to error, imagine you used the same magic number in 10 places and you want to change it. Will you remember all the 9 places or will you change it only in 8?
- 
# Use AI to help pt.2

## Introduction
- When you encounter a part that's not very clear, an AI or forum can help provide a comprehensive understanding of the topic at hand. In this lesson, we will learn how to craft effective questions and prompts.

## getVersion function
- For example, consider the mechanism behind the Interface construct:

````markdown How does this solidity function return the value 4 when I didn't define any logic in AggregatorV3Interface?
function getVersion() public view returns (uint256) {
   return AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419).version();
}
````
- Here is the answer ChatGPT 3.5 provides:

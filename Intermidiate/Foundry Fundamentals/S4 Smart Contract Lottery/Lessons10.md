# The modulo operation
- ***Explanation of using the modulo operation for selecting random winners in smart contract games.***

## Understanding Modulo
- We ended the previous lesson when we defined the following function:

```solidity
function fulfillRandomWords(uint256 requestId, uint256[] memory randomWords) internal override {}
```

- As we've said before, this function is going to be called by the VRF service. Here we will be given 1 random word (1 because of the NUM\_WORDS we defined in the previous lesson). This isn't a `word` as in a string of letters like `pizza`, this is a big and random uint256. Being a number we can use it to do math.
- 
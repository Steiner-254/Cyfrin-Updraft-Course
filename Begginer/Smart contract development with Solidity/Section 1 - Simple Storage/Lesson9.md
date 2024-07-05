# Memory storage and calldata

## Follow along with the course here.
- One aspect that crashes the compilers and gets heads scratching is the memory keyword, which we can gloss over, as it's heavily entwined with the data locations in Solidity. You might be puzzled when you delete the keyword sometimes and you receive a compilation error. Let's dive into this conundrum.

## Data Locations in Solidity
- Solidity allows data to be stored in 6 locations:

1. Stack
2. Memory
3. Storage
4. Calldata
5. Code
6. Logs

- For the purposes of this post, we will focus on three principal ones: `Call Data, Memory, and Storage`. Adding a word of caution – this can get quite intricate. If you don’t comprehend everything on the first go, remember perseverance is the key.

## Call Data and Memory: Temporary Variables
- In Solidity, calldata and memory relate to temporary variables that only exist during the execution of a function. If you run a function with a variable name for once, you can access it only for that particular function execution. If you try to retrieve the variable in the next function execution, you will fail because it was stored temporarily.
- Example:

```
string memory name = "Patrick";
uint256 favoriteNumber = 7;
```

- Strings need special attention. In Solidity, you must specify either memory or call data due to the way arrays work in memory. Most variables automatically default to memory variables, while strings require explicit specification.

## 

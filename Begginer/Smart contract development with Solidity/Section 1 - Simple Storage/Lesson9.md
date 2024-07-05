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

## 

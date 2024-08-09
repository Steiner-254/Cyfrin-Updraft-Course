# Refactoring your tests
- ***Guide on refactoring tests for better efficiency and clarity, including updating price converter functions and deploying contracts on different networks with ease.***

## Refactoring code and test
- The way our code is currently structured is not that flexible. Given the hardcoded Sepolia address we cannot deploy to other chains, and if we wish to do so we would have to come and copy-paste another address everywhere throughout the code. In bigger codebases, with multiple addresses / other items to copy-paste for each deployment (in case we deploy on multiple chains) this update activity is extremely prone to error. We can do better.
- 

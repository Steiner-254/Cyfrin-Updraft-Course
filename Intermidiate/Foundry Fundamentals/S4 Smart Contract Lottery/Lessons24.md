# Test and deploy the lottery smart contract pt.2
- ***Continuing from the previous part, this lesson dives deeper into testing and deploying lottery smart contracts. It covers the usage of helper configurations and the integration of network-specific configurations for smooth deployment.***

## Next steps
- Great! We've written some amazing code, but you know our job here is not done! We need to test it. Let's be smart about testing, what do we need to be able to properly test the contract and what kind of tests shall we do?

## Plan:

1. Write `deploy scripts`
2. Write `tests` For:
   1. Local chain
   2. Forked Testnet
   3. Forked Mainnet
3. Maybe `deploy` and run on `Sepolia`?

## Deployment scripts
- Please create a new file called `DeployRaffle.s.sol` inside the `script` folder.
- 
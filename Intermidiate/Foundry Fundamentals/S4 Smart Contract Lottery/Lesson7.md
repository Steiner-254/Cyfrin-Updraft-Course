# Random numbers - Introduction to Chainlink VRF
- ***Introduction to using `Chainlink VRF` for generating random numbers in blockchain applications.***

### Introduction to Chainlink VRF
- Chainlink VRF (`Verifiable Random Function`) is a service provided by the Chainlink network that offers `secure and verifiable randomness` to smart contracts on blockchain platforms. This randomness is crucial for our Raffle and for any other applications that need a source of randomness.
- How does Chainlink VRF work?
- Chainlink VRF provides randomness in 3 steps:
1. `Requesting Randomness`: A smart contract makes a request for randomness by calling the `requestRandomness` function provided by the Chainlink VRF. This involves sending a request to the Chainlink oracle along with the necessary fees.
2. `Generating Randomness`: The Chainlink oracle node generates a random number off-chain using a secure cryptographic method. The oracle also generates a proof that this number was generated in a verifiable manner.
3. `Returning the Result`: The oracle returns the random number along with the cryptographic proof to the smart contract. The smart contract can then use the random number, and any external observer can verify the proof to confirm the authenticity and integrity of the randomness.

- 
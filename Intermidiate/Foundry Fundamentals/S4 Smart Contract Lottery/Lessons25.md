# Setup the tests
- ***This lesson teaches the `setup` and `execution` of tests for smart contracts, emphasizing the significance of `forge coverage` and the `Arrange-Act-Assert` methodology to ensure robust and reliable smart contract functionality.***

## Continuing our testing journey
- Let's jump straight into testing! But where do we start?
- Easy! Let's call `forge coverage`:

```javascript
Analysing contracts...
Running tests...
| File                      | % Lines       | % Statements   | % Branches    | % Funcs       |
| ------------------------- | ------------- | -------------- | ------------- | ------------- |
| script/DeployRaffle.s.sol | 100.00% (7/7) | 100.00% (9/9)  | 100.00% (0/0) | 100.00% (1/1) |
| script/HelperConfig.s.sol | 0.00% (0/9)   | 0.00% (0/13)   | 0.00% (0/2)   | 0.00% (0/2)   |
| src/Raffle.sol            | 2.94% (1/34)  | 2.33% (1/43)   | 0.00% (0/8)   | 7.69% (1/13)  |
| Total                     | 16.00% (8/50) | 15.38% (10/65) | 0.00% (0/10)  | 12.50% (2/16) |
```

- 
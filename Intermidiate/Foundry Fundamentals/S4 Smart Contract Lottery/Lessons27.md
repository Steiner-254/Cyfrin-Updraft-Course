# Adding more tests
- ***A continuation of developing comprehensive tests for smart contracts, this lesson focuses on enhancing code `coverage` and `efficiency` in testing, particularly for the \`check upkeep\` function.***

## Expanding our test coverage
- Welcome back! Let's continue testing our `Raffle` contract.
- We should test if the check upkeep returns false if the contract has no balance. Open your `RaffleTest.t.sol` and write the following:

```javascript
function testCheckUpkeepReturnsFalseIfItHasNoBalance() public {
    // Arrange
    vm.warp(block.timestamp + interval + 1);
    vm.roll(block.number + 1);

    // Act
    (bool upkeepNeeded, ) = raffle.checkUpkeep("");

    // Assert
    assert(!upkeepNeeded);
}
```

- 
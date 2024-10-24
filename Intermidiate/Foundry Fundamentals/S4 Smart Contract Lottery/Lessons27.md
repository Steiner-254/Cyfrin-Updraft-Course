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

- We use `warp` and `roll` to set the `block.timestamp` in the future. We call `checkUpkeep` and record its return in memory. We check it returned `false`.
- **Note:** `!upkeepNeeded` means `not upkeepNeeded` meaning if `upkeepNeeded` is `false` that expression would read `not false` and `not false` is `true`.
- Run the test using `forge test --mt testCheckUpkeepReturnsFalseIfItHasNoBalance`.
- It passes, amazing!
- What else? We should test if the check upkeep function returns false if the raffle is not Open. Paste the following inside `RaffleTest.t.sol`:

```javascript
function testCheckUpkeepReturnsFalseIfRaffleIsntOpen() public {
    // Arrange
    vm.prank(PLAYER);
    raffle.enterRaffle{value: entranceFee}();
    vm.warp(block.timestamp + interval + 1);
    vm.roll(block.number + 1);
    raffle.performUpkeep("");
    Raffle.RaffleState raffleState = raffle.getRaffleState();
    // Act
    (bool upkeepNeeded, ) = raffle.checkUpkeep("");
    // Assert
    assert(raffleState == Raffle.RaffleState.CALCULATING);
    assert(upkeepNeeded == false);
}
```

- We start by pranking the `PLAYER`. Then we enter the `raffle` using the correct `entranceFee`. After that, we use `warp` and `roll` to set `block.timestamp` in the future. We call `performUpkeep`. This will modify the `RaffleState` into `CALCULATING`. We then call `checkUpkeep` and record its return in memory. We check it returned `false`. We also check that the `RaffleState` is indeed `CALCULATING`.
- Run the test using: `forge test --mt testCheckUpkeepReturnsFalseIfRaffleIsntOpen`.
- It passes, great!
- So testing goes amazing, but how do we know what's left to test? Let's run the following command in the CLI:

```javascript
forge coverage --report debug > coverage.txt
```

- We are interested in the `Raffle.sol` file for now. You can search for that and see an output like this:
- 
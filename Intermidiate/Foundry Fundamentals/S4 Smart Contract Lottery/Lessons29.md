# Using vm.roll and vm.wrap
- ***Exploring the use of \`vm.roll\` and \`vm.wrap\` in smart contract testing, this lesson demonstrates how to adjust block time and number for testing various states and transitions in smart contracts.***

## ### vm.roll and vm.wrap

- In lesson 19, we skipped testing one of the four steps of `enterRaffle`: ``2. We check if the `RaffleState` is `OPEN`;``

- To rephrase it, a user should not be able to enter if the `RaffleState` is `CALCULATING`.

```javascript
function testDontAllowPlayersToEnterWhileRaffleIsCalculating() public {
    // Arrange
    vm.prank(PLAYER);
    raffle.enterRaffle{value: entranceFee}();
    vm.warp(block.timestamp + interval + 1);
    vm.roll(block.number + 1);
    raffle.performUpkeep("");

    // Act / Assert
    vm.expectRevert(Raffle.Raffle__RaffleNotOpen.selector);
    vm.prank(PLAYER);
    raffle.enterRaffle{value: entranceFee}();

}
```

- We start our test exactly like the others. We `prank` the `PLAYER` and we call `enterRaffle` specifying the appropriate `msg.value` so our user registers properly.
- The following step involves calling two new cheatcodes:

>> * [vm.warp](https://book.getfoundry.sh/cheatcodes/warp?highlight=warp#warp) which sets the `block.timestamp`;

>> * [vm.roll](https://book.getfoundry.sh/cheatcodes/roll?highlight=roll#roll) which sets the `block.number`;

- Even though we don't use them here it's important to know that there are other `block.timestamp` manipulation cheatcodes that you'll encounter in your development/security path.

>> * [skip](https://book.getfoundry.sh/reference/forge-std/skip) which skips forward the `block.timestamp` by the specified number of seconds;

>> * [rewind](https://book.getfoundry.sh/reference/forge-std/rewind) which is the antonym of `skip`, i.e. it rewinds the `block.timestamp` by a specified number of seconds;

- So we use the `vm.warp` and `vm.roll` to push the `block.timestamp` and `block.number` in the future.
- 
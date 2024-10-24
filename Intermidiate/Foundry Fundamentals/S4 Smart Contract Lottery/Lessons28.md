# Testing events
- ***A detailed guide on testing events emitted by smart contracts, highlighting the use of Foundry's \`expectEmit\` function. The lesson focuses on ensuring correct event emissions, crucial for smart contract validation.***

### Testing events
- Picking up from where we left in the previous lesson. The only point left is:

``4. Our function emits the `EnteredRaffle` event.``

- Before jumping into the test writing we need to look a bit into the cheatcode that we can use in Foundry to test events: [expectEmit](https://book.getfoundry.sh/cheatcodes/expect-emit?highlight=expectEm#expectemit).

- The first step is to declare the event inside your test contract.

- So, inside `RaffleTest.t.sol` declare the following event:

`event EnteredRaffle(address indexed player);`

- Then we proceed to the test:

```javascript
function testEmitsEventOnEntrance() public {
    // Arrange
    vm.prank(PLAYER);

    // Act / Assert
    vm.expectEmit(true, false, false, false, address(raffle));
    emit EnteredRaffle(PLAYER);
    raffle.enterRaffle{value: entranceFee}();

}
```

- * We prank the `PLAYER`
- * We call the `expectEmit` cheatcode - `vm.expectEmit(true, false, false, false, address(raffle));`
  I know this looks a bit weird. But let's look at what `expectEmit` expects:

- 
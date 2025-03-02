# DoS PoC
- ***Puppy Raffle Denial of Service Attack - Identify and Test. Main focus: Unfair cost increase for late entrants, disadvantaging new players.***

- Running the command `forge test --mt testDenialOfService -vvv` should give us an output which huge figures of the amount of gas used.

- Now let's do the same thing for the second 100 players! We'll need to add something like this to our test.

```js
// Creates another array of 100 players
address[] memory playersTwo = new address[](playersNum);
for (uint256 i = 0; i < playersTwo.length; i++) {
    playersTwo[i] = address(i + playersNum);
}

// Gas calculations for second 100 players
uint256 gasStartTwo = gasleft();
puppyRaffle.enterRaffle{value: entranceFee * players.length}(playersTwo);
uint256 gasEndTwo = gasleft();
uint256 gasUsedSecond = (gasStartTwo - gasEndTwo) * tx.gasprice;
console.log("Gas cost of the second 100 players: ", gasUsedSecond);

assert(gasUsedFirst < gasUsedSecond);
```

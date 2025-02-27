# Recon: Reading docs II
- ***In this lesson Patrick continues reading through the docs and even smell a bug!***

### Back to `enterRaffle`

```js
function enterRaffle(address[] memory newPlayers) public payable {
    require(msg.value == entranceFee * newPlayers.length, "PuppyRaffle: Must send enough to enter raffle");
    for (uint256 i = 0; i < newPlayers.length; i++) {
        players.push(newPlayers[i]);
    }

    // Check for duplicates
    for (uint256 i = 0; i < players.length - 1; i++) {
        for (uint256 j = i + 1; j < players.length; j++) {
            require(players[i] != players[j], "PuppyRaffle: Duplicate player");
        }
    }
    emit RaffleEnter(newPlayers);
}
```

- Back to our `main entry point` function, we see it's using a require statement. Now, this contract is using `pragma 0.7.6`, so custom reverts may not have existed then - but this is a great example of a note we'd want to take and something we should check later.

```js
function enterRaffle(address[] memory newPlayers) public payable {
    require(msg.value == entranceFee * newPlayers.length, "PuppyRaffle: Must send enough to enter raffle"); //@audit - Are custom reverts an option in 0.7.6?
    ...
}
```

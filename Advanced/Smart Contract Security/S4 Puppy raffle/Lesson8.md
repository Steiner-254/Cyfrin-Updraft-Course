# Recon: Reading the code
- ***Navigate PuppyRaffle codebase, player entry points, keyboard shortcuts.***
- Pay special attention to the functions marked `public` or `external`. Especially those which `modify state` or are `payable`. These are going to be certain potential attack vectors.

>> **Note:** In Foundry you can use the command `forge inspect PuppyRaffle methods` to receive an output of methods for the contract.

- I would start with the `enterRaffle` function. Let's take a look.

```js
/// @notice this is how players enter the raffle
/// @notice they have to pay the entrance fee * the number of players
/// @notice duplicate entrants are not allowed
/// @param newPlayers the list of players to enter the raffle
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

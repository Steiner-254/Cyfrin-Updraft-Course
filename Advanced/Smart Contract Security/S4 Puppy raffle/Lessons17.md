# Recon: Refund
- ***Continuing our Recon of PuppyRaffle with the Refund function.***

### Return to Refund
- Coming back to the refund function, let's have a closer look.

```js
/// @param playerIndex the index of the player to refund. You can find it externally by calling `getActivePlayerIndex`
/// @dev This function will allow there to be blank spots in the array
function refund(uint256 playerIndex) public {
    address playerAddress = players[playerIndex];
    require(playerAddress == msg.sender, "PuppyRaffle: Only the player can refund");
    require(playerAddress != address(0), "PuppyRaffle: Player already refunded, or is not active");

    payable(msg.sender).sendValue(entranceFee);

    players[playerIndex] = address(0);
    emit RaffleRefunded(playerAddress);
}
```

- This function takes a player's index, and checks the `players` array for the appropriate address. Following this we see two require statements.

```js
require(playerAddress == msg.sender, "PuppyRaffle: Only the player can refund");
require(playerAddress !=
  address(0), "PuppyRaffle: Player already refunded, or is not active");
```

- The first is ensuring that only a player can refund their own ticket/fee.
- The second, while a little less clear, makes more sense if we see how a player is handled after a refund is processed - their `players` index is set to `address(0)`. So the second require is meant to prevent multiple refunds this way.

```js
players[playerIndex] = address(0);
```


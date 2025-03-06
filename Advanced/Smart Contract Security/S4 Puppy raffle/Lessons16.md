# Exploit: Business logic edge case
- ***Patrick discusses the potential impacts of a user entering PuppyRaffle with a smart contract.***

### Business Logic Edge Case
- By now we've identified fairly clearly how the `enterRaffle` function works. Our finding looks great. Let's next move onto the `refund` function, this one was mentioned explicitly in our documentation.

```js
Users are allowed to get a refund of their ticket & value if they call the refund function
```

- This is what the function looks like.

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

- Remember to start with the documentation so that we understand what's supposed to happen. In order to call this function a player needs to provide their `playerIndex`, and this is acquired through the `getActivePlayerIndex` function.

Let's jump over there quickly.

```js
/// @notice a way to get the index in the array
/// @param player the address of a player in the raffle
/// @return the index of the player in the array, if they are not active, it returns 0
function getActivePlayerIndex(address player) external view returns (uint256) {
    for (uint256 i = 0; i < players.length; i++) {
        if (players[i] == player) {
            return i;
        }
    }
    return 0;
}
```

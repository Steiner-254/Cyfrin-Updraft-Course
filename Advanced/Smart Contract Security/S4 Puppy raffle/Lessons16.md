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
- Let's jump over there quickly.

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

- I think we may have stumbled upon our next bug. The logic here has a problem. Can you spot it?

<details>
<summary>The Problem</summary>
:br

- When looking at this function, we have to ask _"Why is this returning zero?"_
- Arrays begin at index 0, were the player at this index to call this function it would be very unclear whether or not they were in the raffle or not!

</details>

### Wrap Up
- We're not going to go through writing this finding report together, but I absolutely challenge you to write one yourself before moving forward!

**\*Hint:** It's informational severity\*

<details>
<summary>The Vulnerability [i-1]</summary>
:br

# Off-by-One Error in `getActivePlayerIndex` Function

## Overview
This report analyzes a vulnerability found in the Solidity function `getActivePlayerIndex`, which introduces an off-by-one error that can lead to logical inconsistencies in smart contract execution.

## Vulnerability Description
The function is intended to return the index of a player within the `players` array. If the player is not found, it returns `0`. However, this introduces a critical flaw:

- If a player **exists at index `0`**, the function correctly returns `0`.
- If a player **does not exist in the array**, the function also returns `0`.
- This makes it impossible to distinguish between a valid player at index `0` and a player who is not in the array.

## Code Snippet (Vulnerable Function)
```solidity
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

## Impact
- **Incorrect Player Index Interpretation**: Contracts relying on this function for validation or access control may make incorrect decisions.
- **Potential Security Risks**: If other functions depend on this index to determine player eligibility or access rights, a non-existent player could be mistaken for an active player at index `0`.

## Recommended Fix
To resolve this issue, an invalid index should be returned when the player is not found. A common approach is to return `type(uint256).max`, which is a clearly invalid index.

### Fixed Code
```solidity
function getActivePlayerIndex(address player) external view returns (uint256) {
    for (uint256 i = 0; i < players.length; i++) {
        if (players[i] == player) {
            return i;
        }
    }
    return type(uint256).max; // Indicate "not found"
}
```

## Justification for Fix
- **Ensures uniqueness**: The returned index can no longer be misinterpreted.
- **Prevents logical errors**: Other functions using this return value will properly handle cases where the player is not found.
- **Enhances contract security**: Reduces the likelihood of unintended access or eligibility issues.

## Conclusion
This report highlights an off-by-one error in the `getActivePlayerIndex` function and provides a recommended fix. Implementing this fix will improve the reliability and security of the smart contract by ensuring correct index interpretation.

---

</details>

- Up next we're going back to the `refund` function!

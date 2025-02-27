# sc-exploits-minimized
- ***Introducing the sc-exploits-minimized repo, a compilation of common smart contract vulnerability examples.***

### Exploits, but smaller

```js
// Check for duplicates
for (uint256 i = 0; i < players.length - 1; i++) {
    for (uint256 j = i + 1; j < players.length; j++) {
        require(players[i] != players[j], "PuppyRaffle: Duplicate player");
    }
}
```


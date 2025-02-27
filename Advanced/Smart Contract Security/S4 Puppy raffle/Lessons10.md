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

- This code above is going to cause something called a Denial of Service or DOS.

In order to get a better understanding of this bug, let's look at a _minimized_ example of it. If you reference the **[sc-exploits-minimized](https://github.com/Cyfrin/sc-exploits-minimized)** repo, half way down you should see something like what's pictured below.

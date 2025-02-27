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
- In order to get a better understanding of this bug, let's look at a _minimized_ example of it. If you reference the **[sc-exploits-minimized](https://github.com/Cyfrin/sc-exploits-minimized)** repo.
- This is an amazing resource to test your skills in general and familiarize yourself with common exploits. Additionally, the `src` folder of `sc-exploits-minimized` contains minimalistic examples of a variety of vulnerabilities as well.

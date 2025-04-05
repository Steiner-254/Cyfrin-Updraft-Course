# DoS: Mitigation
- ***How to Remove Duplicates from Arrays with Patrick.***

### Recommended Mitigation

Our next step, of course, is providing a recommendation on how to fix this issue.

We may be tempted to suggest something like _"Don't check for duplicates."_, but it's important to preserve the original functionality as much as possible. If we do suggest a change in functionality, we must be clear in explaining why.

With that said, here are some potential suggestions we could make.

1. Consider allowing duplicates. Users can make new wallet addresses anyway, so a duplicate check doesn't prevent the same person from entering multiple times, only the same wallet address.

2. Consider using a mapping to check duplicates. This would allow you to check for duplicates in constant time, rather than linear time. You could have each raffle have a uint256 id, and the mapping would be a player address mapped to the raffle Id.

```diff
+    mapping(address => uint256) public addressToRaffleId;
+    uint256 public raffleId = 0;
    .
    .
    .
    function enterRaffle(address[] memory newPlayers) public payable {
        require(msg.value == entranceFee * newPlayers.length, "PuppyRaffle: Must send enough to enter raffle");
        for (uint256 i = 0; i < newPlayers.length; i++) {
            players.push(newPlayers[i]);
+            addressToRaffleId[newPlayers[i]] = raffleId;
        }

-        // Check for duplicates
+       // Check for duplicates only from the new players
+       for (uint256 i = 0; i < newPlayers.length; i++) {
+          require(addressToRaffleId[newPlayers[i]] != raffleId, "PuppyRaffle: Duplicate player");
+       }
-        for (uint256 i = 0; i < players.length; i++) {
-            for (uint256 j = i + 1; j < players.length; j++) {
-                require(players[i] != players[j], "PuppyRaffle: Duplicate player");
-            }
-        }
        emit RaffleEnter(newPlayers);
    }
.
.
.
    function selectWinner() external {
+       raffleId = raffleId + 1;
        require(block.timestamp >= raffleStartTime + raffleDuration, "PuppyRaffle: Raffle not over");
```

1. Alternatively, you could use **[OpenZeppelin's EnumerableSet library](https://docs.openzeppelin.com/contracts/5.x/api/utils#EnumerableSet)**.

### Wrap Up

That's all there is to it! Let's add this recommendation to our `findings.md` report for this vulnerability and we can move on to the next issue!

<details>
<Summary>DoS Writeup</summary>

### \[M-#] Looping through players array to check for duplicates in `PuppyRaffle::enterRaffle` is a potential denial of service (DoS) attack, incrementing gas costs for future entrants

**Description:** The `PuppyRaffle::enterRaffle` function loops through the `players` array to check for duplicates. However, the longer the `PuppyRaffle:players` array is, the more checks a new player will have to make. This means the gas costs for players who enter right when the raffle starts will be dramatically lower than those who enter later. Every additional address in the `players` array is an additional check the loop will have to make.

        require(block.timestamp >= raffleStartTime + raffleDuration, "PuppyRaffle: Raffle not over");
```

1. Alternatively, you could use **[OpenZeppelin's EnumerableSet library](https://docs.openzeppelin.com/contracts/5.x/api/utils#EnumerableSet)**.

</details>

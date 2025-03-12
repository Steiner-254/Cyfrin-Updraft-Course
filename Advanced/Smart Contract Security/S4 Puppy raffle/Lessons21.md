# Menace To Society
- ***DeFi reentrancy attacks: Importance of understanding past hacks for security pros; The DAO hack case study.***

### Re-entrancy a Menace
- Why am I stressing re-entrancy so much you might ask? The answer is simple.

> * We've known about it since 2016

> * It's easy enough to detect that static analyzers (like Slither) can identify them

> * Web3 is still hit by millions of dollars in re-entrancy attacks per year.

- This is so frustrating!
- There's a **[GitHub Repo](https://github.com/pcaversaccio/reentrancy-attacks)** maintained by Pascal (legend) that catalogues re-entrancy attacks which have occurred. I encourage you to look through these examples and really acquire a sense of the scope of the problem.

### Case Study: The DAO
- **[The DAO](https://en.wikipedia.org/wiki/The_DAO)** was one of the most famous (or infamous) protocols in Web3 history. As of May 2016, its total value locked was \~14% of all ETH.
- Unfortunately, it suffered from a re-entrancy vulnerability in two of its functions.
- The first problem existed in the `splitDao` function, here's the vulnerable section and the whole contract for reference:

```js
contract DAO is DAOInterface, Token, TokenCreation {
    ...
    function splitDAO(
        uint _proposalID,
        address _newCurator
    ) noEther onlyTokenholders returns (bool _success) {

    Transfer(msg.sender, 0, balances[msg.sender]);
    withdrawRewardFor(msg.sender); // be nice, and get his rewards
    totalSupply -= balances[msg.sender];
    balances[msg.sender] = 0;
    paidOut[msg.sender] = 0;
    return true;
    }
}
```

- 
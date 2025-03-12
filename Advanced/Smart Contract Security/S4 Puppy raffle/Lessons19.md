# Reentrancy: Remix example
- ***Patrick shows a hacker draining a user's balance via Remix using re-entrancy exploit.***

### Re-entrancy Remix Example
- The crux to this vulnerability lies in that we're updating the user's balance _last_.

```js
    function withdrawBalance() public {
        uint256 balance = userBalance[msg.sender];
        // An external call and then a state change!
        // External call
        (bool success,) = msg.sender.call{value: balance}("");
        if (!success) {
            revert();
        }

        // State change
        userBalance[msg.sender] = 0;
    }
```

- The prevention of re-entrancy is actually very simple.

```JavaScript
function withdrawBalance() public {
        uint256 balance = userBalance[msg.sender];

        // State change
        userBalance[msg.sender] = 0;

        // External call
        (bool success,) = msg.sender.call{value: balance}("");
        if (!success) {
            revert();
        }
    }
```

- That's it!
- The first time this function is called now, the user's balance is updated to zero before making external calls. This means if an external call causes this function to be called again - the user's balance will already be updated as zero, so no further funds will be withdrawn.
- Let's see this in action, in **[Remix](https://remix.ethereum.org/#url=https://github.com/Cyfrin/sc-exploits-minimized/blob/main/src/reentrancy/Reentrancy.sol\&lang=en\&optimize=false\&runs=200\&evmVersion=null\&version=soljson-v0.8.20+commit.a1b79de6.js)**.

### Trying it Out
- Once you're in remix with the re-entrancy examples open, begin by compiling and deploying both contracts.
- _Be sure to deploy both contracts, first_ _`ReentrancyVictim`_ _then_ _`ReentrancyAttacker`_
- Both contracts should have 0 balance. Begin by having a sucker deposit 5 ether into `ReentrancyVictim` contract.
- Now, change the account/wallet you're calling functions from (near the top). Our `ReentrancyAttacker::attack` function requires at least 1 ether. Once that's set and our attack function is called...
- The attacker has made off with all of the protocol's ETH!

### Wrap Up
- We've seen how impactful overlooked re-entrancy can be and we've seen it in action through remix. Our sc-exploits-minimized repo has some test suites included that will illustrate things locally as well. I encourage you to take a look at those and familiarize yourself with them between lessons if you want to learn more and build on your experience.
- In the next lesson we'll approach how to safeguard ourselves and protocols from re-entrancy.

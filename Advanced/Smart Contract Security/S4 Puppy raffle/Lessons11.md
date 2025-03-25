# Exploit: Denial of service
- ***Explore a DoS attack using a minimalistic DOS contract. Learn how `loops` and `arrays` can make a protocol unusable.***

### Denial of Service
- Let's dive right in and take a look at the DoS contract brought up in our **[Remix](https://remix.ethereum.org/#url=https://github.com/Cyfrin/sc-exploits-minimized/blob/main/src/denial-of-service/DoS.sol\&lang=en\&optimize=false\&runs=200\&evmVersion=null\&version=soljson-v0.8.20+commit.a1b79de6.js)** example.

<details open>
<summary>DoS Contract</summary>

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract DoS {
    address[] entrants;

    function enter() public {
        // Check for duplicate entrants
        for (uint256 i; i < entrants.length; i++) {
            if (entrants[i] == msg.sender) {
                revert("You've already entered!");
            }
        }
        entrants.push(msg.sender);
    }
}
```

</details>

- We can see right away that this `enter` function is doing something very similar to what we saw in `PuppyRaffle::enterRaffle`. Every time someone calls this function, it checks for a duplicate in the `entrants` array, and if one isn't found `msg.sender` is added to `entrants`.
- The problem arises when the size of our `entrants` array grows. Every time someone is added to the `entrants` array, another loop is added to the duplicate check and as a result `more gas is consumed`.

### Remix Example
- We can see this in action by deploying our contract on Remix and comparing the gas consumed when we call this function subsequent times (remember, you'll need to switch your address being used).
- Here's what it looks like for the first four people calling the `enter` function.
- This kind of behavior raises questions about fairness and ultimately is going to lead to a `denial of service` in that it will become impractical for anyone to interact with this function, because gas costs will be too high.

### Exploring DoS attack in Foundry
- Conveniently, if you clone the **[sc-exploits-minimized](https://github.com/Cyfrin/sc-exploits-minimized)** repo. I've included a test suite to illustrate these attack vectors as well.

```bash
git clone https://github.com/Cyfrin/sc-exploits-minimized
cd sc-exploits-minimized
make
```

- The above series of commands will clone the repo and build it locally.

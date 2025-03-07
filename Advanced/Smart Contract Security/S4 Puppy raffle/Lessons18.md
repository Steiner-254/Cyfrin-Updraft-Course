# Exploit: Reentrancy
- ***Reentrancy Attack in PuppyRaffle: Deposit-Withdraw Loop Steals Funds***

- Let's see if we can nail down this vulnerability. When we'd run `Slither` earlier, you may recall it had actually found something...
- Run it again and we'll have a closer look.

```bash
slither .
```

- Looking through the output, we can see `Slither` is in fact detecting things in our `refund` function!

[![Reentrancy Exploit](https://updraft.cyfrin.io/security-section-4/18-exploit-reentrancy/exploit-reentrancy1.png)](https://updraft.cyfrin.io/security-section-4/18-exploit-reentrancy/exploit-reentrancy1.png)

### What is a re-entrancy attack and how does it work?
- For this lesson, we'll be heavily leaning on our **[sc-exploits-minimized](https://github.com/Cyfrin/sc-exploits-minimized)** repo for diagrams and examples to reference. Be sure to clone it so you can see how these vulnerabilities work locally.

- Here's our example contract:

```js
contract ReentrancyVictim {
    mapping(address => uint256) public userBalance;

    function deposit() public payable {
        userBalance[msg.sender] += msg.value;
    }

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
}
```

- Fairly simple. Under normal circumstances

User A (balance 10 ether) can deposit funds

1. deposit{value: 10 ether}

```js
userBalance[UserA] = 10 ether
contract balance = 10 ether
User A balance = 0 ether
```

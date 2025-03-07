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

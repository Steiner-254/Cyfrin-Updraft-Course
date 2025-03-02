# Case Study: DoS
- ***Joined by Owen, we look into 2 case studies of real life DoS attacks: GMX V2 and the Bridges Exchange.***

### Live DoS Examples
- In this lesson, we delve into two different kinds of **Denial of Service Attacks** or **DoS attacks** as they were uncovered from real security reviews. Owen, the founder of Guardian Audits, will share insights from his work, showing us how these vulnerabilities arise and the best frameworks to uncover them.

### Introduction to Owen
- The case studies we'll be covering today are brought to us by Owen - the Founder of Guardian Audits. Guardian Audits was founded 2 years ago and has since made Web3 more secure by uncovering hundreds of vulnerabilities.
- In this lesson, Owen provides a breakdown of audits in which DoS vulnerabilities were uncovered and we're greatly appreciative to Owen for his contributions. 🙏

## Case Study 1: Bridges Exchange
- The first DoS vulnerability we'll touch on was found in the dividends distribution system of the Bridges exchange.

### Attack Mechanics
- The issue arises from an `unbounded for-loop` in the `distributeDividends` function, resulting in the risk of a DoS attack. An ill-intentioned party can cause the distribute dividends function to violate the block gas limit, effectively blocking all dividends by continually generating new addresses and minting minimal quantities of the Bridges pair token.
- Let's look at the code.

```js
function distributeDividends(uint amount) public payable lock {
   require(amount == msg.value, "don't cheat");
   uint length = users.length;
   amount = amount.mul(magnitude);
   for (uint i; i < length; i++){
      if(users[i] != address(0)){
         UserInfo storage user = userInfo[users[i]];
         user.rewards += (amount.mul(IERC20(address(this).balanceOf(users[i])).div(totalSupply.sub(MINIMUM_LIQUIDITY))));
      }
   }
}
```

- We can see the `unbounded for-loop` above. This is looping through an array, `users[]`, the length of which has no limits.
- The practical effect of this is that, were the length of the `users[]` array long enough, the gas required to call this function would be prohibitively expensive. Potentially hitting block caps and being entirely uncallable.

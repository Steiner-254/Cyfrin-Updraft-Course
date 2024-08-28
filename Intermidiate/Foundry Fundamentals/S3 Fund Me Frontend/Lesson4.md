# Decoding Ethereum transactions
- ***Guide to understanding and decoding Ethereum transaction data using function selectors, with practical examples of verifying transactions.***

## Intro to Function Selectors
- Continuing from the last lesson, when we call the `fund` function our Metamask is going to pop up with a bunch of information about the transaction.
- By clicking the `Hex` tab, we can confirm the raw data for this transaction and exactly which function is being called.
- We'll go into `function selectors` a lot more later, but the important thing to understand is that when a Solidity contract is compiled, our functions are converted into a low-level bytecode called a `function selector`.
- When we call our `fund` function, this is converted to a `function selector` that we can actually verify using Foundry's `cast` command.

```javascript
cast sig "fund()"
```

- The above should result in the output `0xb60d4288` and when we compare this to the `Hex` data in our Metamask, we see that it does indeed match!
- Were the function being called something secret/nefarious like `stealMoney()`. This function selector would be completely different. Running our cast command again confirms this clearly with a return of `0xa7ea5e4e`.
- We can use this knowledge to verify any function we're calling through our browser wallet by comparing the expected and actual `function selectors` for the transaction.
- There's even a way to decode calldata using the cast command.
- Let's say our function was a little different and it required an argument.

```javascript
function fund(uint256 amount) public payable {
    require(amount.getConversionRate(s_priceFeed) >= MINIMUM_USD, "You need to spend more ETH!");
    // require(PriceConverter.getConversionRate(msg.value) >= MINIMUM_USD, "You need to spend more ETH!");
    s_addressToAmountFunded[msg.sender] += amount;
    s_funders.push(msg.sender);
}
```

- If we were to call this function, the information Metamask gives us is a little different.
- 
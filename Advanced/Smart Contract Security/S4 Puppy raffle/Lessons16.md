# Exploit: Business logic edge case
- ***Patrick discusses the potential impacts of a user entering PuppyRaffle with a smart contract.***

### Business Logic Edge Case
- By now we've identified fairly clearly how the `enterRaffle` function works. Our finding looks great. Let's next move onto the `refund` function, this one was mentioned explicitly in our documentation.

```js
Users are allowed to get a refund of their ticket & value if they call the refund function
```

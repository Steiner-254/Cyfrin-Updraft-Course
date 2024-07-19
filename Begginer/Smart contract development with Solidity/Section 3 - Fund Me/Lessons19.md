# Smart contract constructor

## Introduction
- In this lesson, we will address a security gap present in the current `fundMe` contract.

## Constructor
- Currently, anyone can call the `withdraw` function and drain all the funds from the contract. To fix this, we need to restrict the withdrawal function to the contract owner.
One solution could be to create a function, `callMeRightAway`, to assign the role of contract `owner` to the contract's creator immediately after deployment. However, this requires two transactions.
- A more efficient solution is to use a `constructor` function:

```
constructor() {}
```

- 🗒️ NOTE

>> The `constructor` does not use the `function` and `public` keywords.

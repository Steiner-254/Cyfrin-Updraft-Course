# Creating custom errors
- ***Guidance on using custom errors in Solidity for gas-efficient and effective error checking.***

### Implementing the `entranceFee`
- Great! Let's move on with writing the contract.
- Previously we defined the `i_entranceFee` variable. This is the amount the user has to send to enter the raffle. How do we check this?

```javascript
    function enterRaffle() external payable {
        require(msg.value >= i_entranceFee, "Not enough ETH sent");
    }
```

- First, we changed the visibility from `public` to `external`. `External` is more gas efficient, and we won't call the `enterRaffle` function internally.
- We used a `require` statement to ensure that the `msg.value` is higher than `i_entranceFee`. If that is false we will yield an error message `"Not enough ETH sent"`.
- **Note: The** **`require`** **statement is used to enforce certain conditions at runtime. If the condition specified in the** **`require`** **statement evaluates to** **`false`, the transaction is reverted, and any changes made to the state within that transaction are undone. This is useful for ensuring that certain prerequisites or validations are met before executing further logic in a smart contract.**
- 
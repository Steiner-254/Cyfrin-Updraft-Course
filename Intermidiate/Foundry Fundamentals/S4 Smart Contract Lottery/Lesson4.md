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

- 
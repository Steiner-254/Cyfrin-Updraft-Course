# Setup the tests
- ***This lesson teaches the `setup` and `execution` of tests for smart contracts, emphasizing the significance of `forge coverage` and the `Arrange-Act-Assert` methodology to ensure robust and reliable smart contract functionality.***

## Continuing our testing journey
- Let's jump straight into testing! But where do we start?
- Easy! Let's call `forge coverage`:

```javascript
Analysing contracts...
Running tests...
| File                      | % Lines       | % Statements   | % Branches    | % Funcs       |
| ------------------------- | ------------- | -------------- | ------------- | ------------- |
| script/DeployRaffle.s.sol | 100.00% (7/7) | 100.00% (9/9)  | 100.00% (0/0) | 100.00% (1/1) |
| script/HelperConfig.s.sol | 0.00% (0/9)   | 0.00% (0/13)   | 0.00% (0/2)   | 0.00% (0/2)   |
| src/Raffle.sol            | 2.94% (1/34)  | 2.33% (1/43)   | 0.00% (0/8)   | 7.69% (1/13)  |
| Total                     | 16.00% (8/50) | 15.38% (10/65) | 0.00% (0/10)  | 12.50% (2/16) |
```

- These numbers are weak! Let's improve them!
- In my opinion, when one needs to decide where to start testing there are two sensible approaches one could take:

1. Easy to Complex - start with view functions, then with smaller functions and advance to the more complex functions;
2. From the main entry point(s) to the periphery - what is the main functionality that the external user needs to call in order to interact with your contract;

- Patrick chose number 2. So what is the main entry point of our Raffle contract? The `enterRaffle` function.
- Let's look closely at it:

```javascript
function enterRaffle() external payable {
    if(msg.value < i_entranceFee) revert Raffle__NotEnoughEthSent();
    if (s_raffleState != RaffleState.OPEN) revert Raffle__RaffleNotOpen();

    s_players.push(payable(msg.sender));
    emit EnteredRaffle(msg.sender);
}
```

1. We check if the `msg.value` is high enough;
2. We check if the `RaffleState` is `OPEN`;
3. If all of the above are `true` then the `msg.sender` should be pushed in the `s_players` array;
4. Our function emits the `EnteredRaffle` event.


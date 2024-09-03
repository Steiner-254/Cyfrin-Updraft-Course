# Smart contracts events
- ***In this lesson we'll explore how to use events in Ethereum smart contracts, specifically in a lottery system context.***

### Tracking participants
- Ok, our user paid the entrance fee, but how do we track his registration? We can't simply take the money and run! We need a storage structure that keeps track of all registered users from where to `pick the winner`.
- Take a moment and decide what would be the best from the following:
1. Mapping;
2. Array;
3. A bunch of address variables and limit the number of participants;

- Congratulations if you chose the **Array** option! To be more specific, a dynamic array that grows in size with each new participant. Mappings can't be looped through, and a bunch of address variables is not feasible.
- Add the array below the `i_entranceFee` declaration: `address payable[] private s_players;`
- We've made it `address payable` because one of the participants registered in this array will be paid the ETH prize, hence the need for the `payable` attribute.
- Back in the `enterRaffle` function, we need to add the address that paid into the `s_players` array:
```javascript
    function enterRaffle() external payable {
        if(msg.value < i_entranceFee) revert Raffle__NotEnoughEthSent();
        s_players.push(payable(msg.sender));
    }
```

- The `.push` method is used to append an element to an array, increasing its length by 1.
- `s_players.push(payable(msg.sender));` performs a modification of the state by adding the payable address `msg.sender` in the array. It is customary to emit an **event** every time we perform a state modification.

### Events
- `Events` are a way for smart contracts to communicate with the outside world, primarily with the front-end applications that interact with these contracts. Events are logs that the Ethereum Virtual Machine (EVM) stores in a special data structure known as the `blockchain log`. These logs can be efficiently accessed and filtered by external applications, such as `dApps (decentralized applications)` or off-chain services. The logs can also be accessed from the blockchain nodes. Each emitted event is tied up to the smart contract that emitted it.
- Please click [here](https://docs.soliditylang.org/en/v0.8.25/contracts.html#events) to find out more about events.
- How can we use events?
- Imagine we have a more complex function that changes an important parameter, let's say we are recording the exchange rate of BTC/USDC. We change it by calling the function `changeER()`. After we perform the call and the exchange rate is changed we need to make sure this also gets picked up by our front-end. We make the front-end listen for the `BTCUSDCupdated` event. An example of that event could be this:

```javascript
event BTCUSDCupdated(
    uint256 indexed oldER,
    uint256 indexed newER,
    uint256 timestamp,
    address sender

)
```

- 
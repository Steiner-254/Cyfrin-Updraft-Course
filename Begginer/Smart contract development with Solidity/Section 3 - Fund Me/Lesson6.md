# Mid section recap

## Introduction
- From lessons 1 to 5 we've explored the usage of the keyword `payable`, the global property `msg.value` and what happens when a function reverts.

## payable, required, msg.value
- To enable a function to receive a native blockchain token such as Ethereum, it must be marked as `payable`:
```
function deposit() public payable {
 balances[msg.sender] += msg.value;
}
```

- If we want a function to fail under certain conditions, we can use the `require` statement. For example, in a bank transfer scenario, we want the operation to fail if the sender does not have enough balance. Here's an example:
```
function transfer(address recipient, uint amount) public {
 require(balances[msg.sender] >= amount);
 balances[msg.sender] -= amount;
 balances[recipient] += amount;
}
```

- In this code, if the condition ```balances[msg.sender] >= amount``` is not met, the transaction will `revert`. This means the operation undoes any previous actions and will not consume the total maximum gas allocated by the user.
- The Solidity global property `msg.value` contains the amount of cryptocurrency sent with a transaction.

## Integrating External Data with Chainlink
- `Chainlink` is a revolutionary technology that enables the integration of external data and computation into smart contracts. It provides a decentralized way of `injecting data`, which is particularly useful for assets whose values fluctuate over time. For instance, if a smart contract deals with real-world assets such as stocks or commodities, obtaining real-time pricing information is crucial.
- 🗒️ NOTE

>> `Chainlink` enables smart contracts to interact with real-world data and services without sacrificing the security and reliability guarantees inherent to blockchain technology.

- Consider a smart contract that deals with a commodity like `gold`. Chainlink Price Feeds can provide real-time gold prices, allowing the smart contract to reflect the current market prices.
```
import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
contract GoldPriceContract {
    AggregatorV3Interface internal priceFeed;
    //The Chainlink price feed contract address
    constructor() public {
        priceFeed = AggregatorV3Interface(0x8468b2bDCE073A157E560AA4D9CcF6dB1DB98507);
    }
    // Get the latest gold price
    function getLatestGoldPrice() public view returns (int) {
        (,int price,,,) = priceFeed.latestRoundData();
        return price;
    }
}
```

- In this example, `Chainlink Feeds` are used to query the latest price of gold, ensuring the smart contract has up-to-date market information.

## Conclusion
- Understanding and utilizing `payable`, `require`, and `msg.value` is crucial for handling transactions in Solidity. Besides that, Chainlink enhances smart contract functionality by providing access to real-world data, allowing for more dynamic and reliable decentralized applications.

## 🧑‍💻 Test yourself
Quiz? 📕 What are the three primary topics covered from lessons 1 to 5?
- Answer:

>> 1. Usage of `payable`, `require` and `msg.value` in smart contracts.

>> 2. Smart contracts reverting when certain conditions are not met such as meeting the minimum amount for donation in a smart contract.

>> 3. Interaction with `chainlink` features. How it links with the real-world data, by fecthing real-world data and updating it on the blockchain. This includes `data feeds` and price `feeds`.

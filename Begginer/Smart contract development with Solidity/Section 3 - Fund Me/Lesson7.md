# Solidity interfaces

## Introduction
- In this part, we'll learn how to convert Ethereum (ETH) into Dollars (USD) and how to use `Interfaces`.

## Converting Ethereum into USD
- We begin by trying to convert the `msg.value`, which is now specified in ETH, into USD. This process requires fetching the current USD market price of Ethereum and using it to convert the msg.value amount into USD.
```
// Function to get the price of Ethereum in USD
function getPrice() public {}
// Function to convert a value based on the price
function getConversionRate() public {}
```

## Chainlink Data Feed
- Our primary source for Ethereum prices is a `Chainlink Data Feed`. [Chainlink Data Feed documentation](https://docs.chain.link/data-feeds/using-data-feeds) provides an example of how to interact with a `Data Feed contract`:

>> - `AggregatorV3Interface:` a contract that takes a Data Feed address as input. This contract maintains the ETH/USD price updated.
>> - `latestRoundData:` a function that returns an answer, representing the latest Ethereum price.

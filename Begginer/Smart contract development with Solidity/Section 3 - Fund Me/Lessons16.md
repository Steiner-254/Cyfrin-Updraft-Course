# Solidity for Loop

## Introduction
- In this tutorial, we'll set up the `withdraw` function to enable the retrieval of accumulated funds. We'll then reset all the `mappings to zero` using a method known as a for `loop`.

## For Loops
- A *`for loop`* is a widely-used concept in many programming languages that enables the execution of a block of code a repeated amount of times.
For example, consider this list:
```
//[1, 2, 3, 4] elements
// 0  1  2  3  indexes
```

- The elements of the list are the numbers 1 through 4, with indices ranging from 0 to 3: the number 1 is at index 0, the number 2 is at index 1, and so on. To access all the elements in this list, we can use their indexes.
- A typical `for loop` structure in programming languages involves:

>> - Initializing at some starting index
>> - Iterating until an end index
>> - Incrementing by certain steps

- For instance, if we start the loop at index 0, end at index 10, and increment by 1 each time, we'll get:
```
0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
```

- However, if we start at index 3, end at index 12, and increment by 2 each time, we get:
```
3, 5, 7, 9, 11
```

## Using for Loops in the FundMe Contract
- To implement this concept in the `FundMe` contract:

```
uint256 funderIndex;
for (funderIndex = 0; funderIndex < funders.length; funderIndex++) {
    address funder = funders[funderIndex];
    addressToAmountFunded[funder] = 0;
}
```

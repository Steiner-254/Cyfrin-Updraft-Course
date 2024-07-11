# Project setup

## Introduction
- Let's begin by coding `FundMe`, a crowdfunding contract allowing users to send funds, which the owner can later `withdraw`. Before we start, let's clean up our Remix IDE workspace

## Setting up the project
- Start from scratch by opening your `Remix IDE` and deleting all existing contracts. Next, create a new contract named FundMe.
- 👀❗IMPORTANT

>> Before you start coding, try to `write down in plain English what you want your code to achieve`. This helps clarify your goals and structure your approach.

## We want FundMe to perform the following tasks:
>> 1. `Allow users to send funds into the contract:` users should be able to deposit funds into the 'FundMe' contract
>> 2. `Enable withdrawal of funds by the contract owner:` the account that owns FundMe should have the ability to withdraw all deposited funds
>> 3. `Set a minimum funding value in USD:` there should be a minimum amount that can be deposited into the contract

- Let's outline the core structure of the contract:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract FundMe {}
```

## fund and withdraw functions
- The `FundMe` contract will have two primary functions that serve as the main interaction points:

>> 1. `fund:` allows users to deposit funds into the contract
>> 2. `withdraw:` grants the contract owner the ability to withdraw the funds that have been previously deposited

##

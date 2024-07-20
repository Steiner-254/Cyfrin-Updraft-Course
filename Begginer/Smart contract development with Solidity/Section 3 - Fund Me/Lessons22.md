# Immutability and constants

## Introduction
- In this lesson, we'll explore tools to `optimize gas usage` for variables that are set only once.

## Optimizing Variables
- The variables `owner` and `minimumUSD` are set one time and they never change their value: `owner` is assigned during contract creation, and minimumUSD is initialized at the beginning of the contract.

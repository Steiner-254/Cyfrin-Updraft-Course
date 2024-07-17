# Resetting an Array

## Introduction
- In this section, we'll focus on one of the final steps to complete the `withdraw` function: effectively resetting the funders array.

## Resetting an Array
- The simplest way to reset the `funders` array is similar to the method used with the mapping: iterate through all its elements and reset each one to `0`. Alternatively, we can create a brand new funders array.
```
funders = new address();
```

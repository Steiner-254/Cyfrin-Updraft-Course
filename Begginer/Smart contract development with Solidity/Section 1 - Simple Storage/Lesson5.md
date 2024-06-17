# Arrays and structs

## Storing and Tracking Favorite Numbers in Our Contract
- Our smart contract, as is, does an excellent job. It primarily enables users to store their favorite numbers, update them, and view them later. Sounds brilliant, right? Yet, it has been specifically designed to store a single favorite number at a time. What if we wanted to maintain not just our favorite number, but others as well?
- In this lesson, we will explore how we can extend this functionality. We'll learn how to create a list of favorite numbers using `arrays`. Additionally, we will delve into using `structs` for creating new types in Solidity. Let's get started!

## An Array of Favorite Numbers
- The idea is to say goodbye to one uint256 favorite number and say hello to a list of uint256 numbers, or in our case, a list of favorite numbers. Here's the magic syntax:

```
uint256[] list_of_favorite_numbers;
```

- The bracket syntax identifies that we have a list of uint256, a list or array of numbers. An array of numbers would look something like this:

```
Array_Example_list_of_favorite_numbers = [0, 78, 90];
```

- Arrays are very dominant in computer science and programming, and an array in Solidity bears resemblance to an array in any other programming language. If you're new to arrays or lists, remember `arrays are zero indexed. The first element starts from index zero, the second from index one, and so on.`

##


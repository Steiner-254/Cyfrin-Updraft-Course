# Smart contract constructor

## Introduction
- In this lesson, we will address a security gap present in the current `fundMe` contract.

## Constructor
- Currently, anyone can call the `withdraw` function and drain all the funds from the contract. To fix this, we need to restrict the withdrawal function to the contract owner.
One solution could be to create a function, `callMeRightAway`, to assign the role of contract `owner` to the contract's creator immediately after deployment. However, this requires two transactions.
- A more efficient solution is to use a `constructor` function:

```
constructor() {}
```

- 🗒️ NOTE

>> The `constructor` does not use the `function` and `public` keywords.

## Assigning the Owner in the Constructor
- The `constructor` function is automatically called during contract deployment, within the same transaction that deploys the contract.
- We can use the `constructor` to set the contract's owner immediately after deployment:
```
address public owner;
constructor() {
    owner = msg.sender;
}
```

- Here, we initialize the state variable `owner` with the contract deployer's address (`msg.sender`).

## Modifying the Withdraw Function
- The next step is to update the `withdraw` function to ensure it can only be called by the owner:
```
function withdraw() public {
    require(msg.sender == owner, "must be owner");
 // rest of the function here
}
```

- Before executing any withdrawal actions, we check that `msg.sender` is the `owner`. If the caller is not the `owner`, the operation reverts with the error message `"must be the owner."` This access restriction ensures that only the intended account can execute the function.

## Conclusion
- By incorporating a constructor to assign ownership and updating the withdraw function to restrict access, we have significantly improved the security of the fundMe contract. These changes ensure that only the contract owner can withdraw funds, preventing unauthorized access.

## 🧑‍💻 Test yourself
1. 📕 What is the purpose of a `constructor` function and how does it differ from regular functions?
- Answer:

>> Used to set the contract's owner.

2. 📕 Why is it necessary to restrict access to the `withdraw` function?
- Answer:

>> To prevent external calls to the function leading to draining of funds from the contract.

3. 🧑‍💻 Write a function called `withdrawOnlyFirstAccountRemix` that allows only the first Remix account to withdraw all funds from the contract.
- Answer:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RestrictedWithdrawal {
    address public firstRemixAccount;

    constructor() {
        // Set the first Remix account as the deployer of the contract
        firstRemixAccount = msg.sender;
    }

    // Function to withdraw all funds, restricted to the first Remix account
    function withdrawOnlyFirstAccountRemix() public {
        require(msg.sender == firstRemixAccount, "Not authorized");
        payable(firstRemixAccount).transfer(address(this).balance);
    }

    // Function to receive Ether into the contract
    receive() external payable {}

    // Function to check contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
```

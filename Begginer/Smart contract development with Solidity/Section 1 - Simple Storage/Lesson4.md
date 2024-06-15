# Functions

## Introduction
- In the previous lesson, we added a store variable favoriteNumber within our first smart contract and explored different solidity types. In this lesson, you'll discover how to update and retrieve this number, while also learning about `functions, visibility, deployment, transactions, gas usage and variable scope`.

## Building the store function
- 📋 To store this variable, we need to implement a new function. In Solidity, functions - or methods, are portions of code designed to execute specific tasks within the overall codebase. We'll call this new function store, and it will be responsible for updating the favoriteNumber variable.

```
contract SimpleStorage {

    uint256 favoriteNumber; // a function will update this variable

    // the function will be written here
}
```
- Functions are identified by the keyword function, followed by a name (e.g. store) and any additional parameters enclosed in rounded parentheses (). These parameters represent the values sent to our function. In this case, we inform the store function that we want to update favoriteNumber with some other value _favoriteNumber:

```
contract SimpleStorage {

    uint256 favoriteNumber; // storage variable: it's stored in a place called "Storage"

    function store(uint256 _favoriteNumber) public {
        // favorite number variable is updated with the value that is contained into `_favoriteNumber`
        favoriteNumber = _favoriteNumber;
    }
}
```

- The content of the function is placed within the curly brackets {}. The prefix _ before _favoriteNumber is used to emphasise that the local variable _favoriteNumber is a different variable from the state variable favoriteNumber. This helps prevent potential confusion when dealing with different variables with similar names in complex codebases.

## Deploying the Smart Contract
- You can test out this function in the Remix VM environment. At this stage, you can compile your code by navigating to the compile tab and hitting Compile. After compiling, navigate to the tab Deploy and Run Transactions to test your function.
- The Deploy and Run Transactions tab holds a variety of parameters that are used during the deployment process. You'll be assigned an account with some ETH to deploy your smart contract.

- In this environment, your contract is assigned a unique address. You can re-access your deployed contract by expanding the Deployed Contracts interface and simultaneously opening the terminal, which shows log data of all contract deployments and transactions.

- If we open the Remix terminal we can see that deploying the contract has just sent a simulated transaction on the Remix environment. You can check out its details such as status, hash, from, to and gas.

>> !IMPORTANT The process of sending a transaction is the same for deploying a contract and for sending Ethers. The only difference is that the machine-readable code of the deployed contract is placed inside the data field of the deployment transaction.

## Transactions creation
- Let's send a transaction to the store function to change the value of the variable favoriteNumber: you can insert a number and press the store button in Remix. A transaction is initiated and after some time, its status will change from pending to complete.
- 💸 From the accounts section, it becomes visible that ETH is being consumed every time a transaction is submitted. When the state of the blockchain is modified (e.g. deploying a contract, sending ETH, ..), is done by sending a transaction that consumes gas. Executing the store function is more expensive than just transferring ETH between accounts, with the rising gas expenses primarily associated (though not exclusively) with the code length.

##


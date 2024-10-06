# Custom Error
- ***A comprehensive guide to custom errors with parameters. This lesson covers how to create custom errors in Solidity smart contracts and how to add parameters to those errors so that the chainlink keepers can automatically kick off a VRF request.***

- Using a basic `revert()` statement may not provide evidence on why a transaction failed. A better approach is to define custom errors by combining the **contract name** with a **description**, such as `Raffle__UpkeepNotNeeded()`. Additionally, including **parameters** can offer more detailed information about the cause of the transaction failure.

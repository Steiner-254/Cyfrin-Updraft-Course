## Question

1. **What is a common method of resetting an uint256 array in Solidity?**

a). amy_array = new uint256 my_array= new uint256[1];
b). my_array.push(uint256(0));
c). my_array = new uint256[](0)
d). my_array.reset();

**Answer is c** - *This method creates a new empty array, effectively resetting the uint256 array to an empty state.*


2. **Which of the following Solidity constructs is used to signal an event within a smart contract to be logged for external use?**

print WinnerPicked(s_recentWinner);


s_recentWinner = WinnerPicked();


emit WinnerPicked(s_recentWinner);


log WinnerPicked(s_recentWinner);

- Answer -> emit WinnerPicked(s_recentWinner);
- In Solidity, the emit keyword is used to log events for external use. This allows external applications, such as decentralized applications (dApps), to listen to events emitted from the blockchain.


3. Which of the following is a common pattern used to organize smart contract code?


Command, Query, Responsibility Segregation (CQRS).


Checks, Interactions, Effects (CIE).


Checks, Effects, Interactions (CEI).


Input, Process, Output (IPO).

- Answer -> Checks, Effects, Interactions (CEI).
- This pattern is commonly used in Solidity smart contracts to help prevent reentrancy attacks and ensure that state changes are made safely.


4. What is a common approach to define a recurring schedule for automated operations?


Event-based triggers.


Cron expressions.


Sequential timers.


Logic-based decision trees.

- Answer -> Cron expressions.
- Cron expressions are commonly used to define recurring schedules for automated operations, allowing for precise scheduling of tasks at specific intervals.

5. What is the CEI pattern, and what does it help you defend against?


Checks, Effects, Interactions, and it helps you defend against reentrancies.


Checks, Effects, Interactions, and it helps you defend against private key leaks.


Cthulhu, Eats, Intelligence, and it helps you defend against stupidity.


Checks, Effects, Interactions, and it helps you defend against denial of service.

- Answer -> Checks, Effects, Interactions, and it helps you defend against reentrancies.
- The CEI pattern is used in smart contract development to structure functions in a way that helps prevent reentrancy attacks, which occur when a contract calls another contract and is then called back before its state changes are completed. By performing checks (validations), making state changes (effects), and then interacting with other contracts (interactions), you minimize the risk of reentrancy vulnerabilities.

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

- Answer -> 
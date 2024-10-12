# Mid section recap
- ***A recap of the progress in developing a fair and transparent lottery system using Chainlink's VRF. The lesson revisits key concepts like the raffle contract, buying into the raffle, and the decentralized draw process.***

## ### Quick recap
- Congratulations, we wrote a bunch of great code!
- What did we do?

>> We implemented Chainlink VRF to get a random number;

>> We defined a couple of variables that we need both for Raffle operation and for Chainlink VRF interaction;

>> We have a not-so-small constructor;

>> We've created a method for the willing participants to enter the Raffle;

>> Then made the necessary integrations with Chainlink Automation to automatically draw a winner when the time is right.

>> When the time is right and after the Chainlink nodes perform the call then Chainlink VRF will provide the requested randomness inside `fulfillRandomWords`;

>> The randomness is used to find out who won, the prize is sent, raffle is reset.

- 
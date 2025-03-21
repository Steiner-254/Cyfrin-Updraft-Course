# DoS PoC
- ***Puppy Raffle Denial of Service Attack - Identify and Test. Main focus: Unfair cost increase for late entrants, disadvantaging new players.***

- Running the command `forge test --mt testDenialOfService -vvv` should give us an output which huge figures of the amount of gas used.

- Now let's do the same thing for the second 100 players! We'll need to add something like this to our test.


# Smart contracts events
- ***In this lesson we'll explore how to use events in Ethereum smart contracts, specifically in a lottery system context.***

### Tracking participants
- Ok, our user paid the entrance fee, but how do we track his registration? We can't simply take the money and run! We need a storage structure that keeps track of all registered users from where to `pick the winner`.
- Take a moment and decide what would be the best from the following:
1. Mapping;
2. Array;
3. A bunch of address variables and limit the number of participants;

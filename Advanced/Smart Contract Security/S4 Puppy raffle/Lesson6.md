# Tooling: Solidity Visual Developer
- ***Patrick goes over additional useful tools like Solidity Metics and Solidity Visual Developer.***

### Tools in our Belt
- We've already got a handful of tools at our disposal.

* `Slither`
* `Aderyn`
* `CLOC`

- We also went over `Solidity Metrics` earlier, but let's take another look as `Puppy Raffle` is going to afford us some more interesting insight into the power of this tool.

>> Remember: you can right-click your `src` folder in the `Puppy Raffle` workspace and select `Solidity: Metrics` from the context menu to run the tool on that directory.

### Solidity Metrics Insights
- Scrolling to the bottom of the `Solidity: Metrics` report, take a look at the `Inheritance Graph`
- From this illustration we can see that the contract `PuppyRaffle` is of types `ERC721` and `Ownable`.
- A little further down we see a `Call Graph`
- This provides us a clear reference of which functions are being called by which other functions!
- And finally `Solidity: Metrics` gives us a `Contract Summary`
- This is incredibly valuable. It provides is a clear breakdown of `Internal` vs `External functions` as well as identifies which functions are `payable` and can `modify state`!

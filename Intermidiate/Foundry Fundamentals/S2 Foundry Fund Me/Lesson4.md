# Finishing the setup
- ***Continuation of the project setup, including cleaning up unnecessary files, incorporating contracts from Remix, resolving import errors, and directing imports with remappings.***

## Finishing the setup
- Please delete the `Counter` files that Foundry prepopulated in our new project.
- In `src` create two files, `FundMe.sol` and `PriceConverter.sol`.
- Go on the [Remix Fund Me repo](https://github.com/Cyfrin/remix-fund-me-f23) and copy the contents of both contracts.
- Try running `forge compile` or `forge build`. A few errors will pop up. What's the problem?
- If you open both the copied smart contracts you will see that up top we `import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";`. This wasn't a problem in Remix because Remix automatically takes care of this problem for you. In Foundry you have to ***manually install*** all your dependencies.
- 
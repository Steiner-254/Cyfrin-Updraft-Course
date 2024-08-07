# Finishing the setup
- ***Continuation of the project setup, including cleaning up unnecessary files, incorporating contracts from Remix, resolving import errors, and directing imports with remappings.***

## Finishing the setup
- Please delete the `Counter` files that Foundry prepopulated in our new project.
- In `src` create two files, `FundMe.sol` and `PriceConverter.sol`.
- Go on the [Remix Fund Me repo](https://github.com/Cyfrin/remix-fund-me-f23) and copy the contents of both contracts.
- Try running `forge compile` or `forge build`. A few errors will pop up. What's the problem?
- If you open both the copied smart contracts you will see that up top we `import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";`. This wasn't a problem in Remix because Remix automatically takes care of this problem for you. In Foundry you have to ***manually install*** all your dependencies.
- `forge install` is the command we are using to install one or multiple dependencies. [Go here](https://book.getfoundry.sh/reference/cli/forge/install?highlight=install#forge-install) to read more about this command.
- Call the following:

```
forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
```

- Wait for it to finish.
- We used `forge install` to ask Forge to install something in our project. What? We specified the path to a GitHub repository, this also could have been a raw URL. What version? Following the path to a GitHub repository you can add an `@` and then you can specify:

>> A branch: master;
>> A tag: v1.2.3.4 or 0.6.1 in our case;
>> A commit: 8e8128;

- We end the install command with `--no commit` in order to not create a git commit. More on this option later.

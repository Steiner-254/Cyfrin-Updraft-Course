# Introduction to Chainlink Automation
- ***This lesson covers the basics of Chainlink Automation, essential for automating the 'Pick Winner' function in a lottery application. It delves into the use of Chainlink VRF for randomness and explores time-based automation and custom logic through Chainlink.***

## Chainlink Automation
- Amazing work! Our project starts looking good!
- Looking through it we can see that there's an obvious problem. For the winner to be picked we need someone to call `pickWinner`. Manually calling this day after day is not optimal, and we, as engineers, need to come up with a better solution! Let's discuss Chainlink Automation!
- **Chainlink Automation** is a decentralized service designed to automate key functions and DevOps tasks within smart contracts in a highly reliable, trust-minimized, and cost-efficient manner. It allows smart contracts to automatically execute transactions based on predefined conditions or schedules.
- This lesson will be centered on creating a time-based automation using Chainlink's UI. The relevant section in the documentation starts [here](https://docs.chain.link/chainlink-automation/guides/compatible-contracts) and [here](https://docs.chain.link/chainlink-automation/guides/job-scheduler).
- In this video, Richard provides a walkthrough on Chainlink’s Keepers, starting with how to connect a wallet from the Chainlink Keepers UI, registering a new upkeep, and implementing time-based trigger mechanisms.
- Let's open the contract available [here](https://docs.chain.link/chainlink-automation/guides/compatible-contracts#example-automation-compatible-contract-using-custom-logic-trigger) in Remix by pressing the `Open in Remix` button.
- Following Richard's tutorial let's delete the `is AutomationCompatibleInterface` inheritance, both the `interval` and `lastTimeStamp` variables, adjust the constructor and delete both available functions. Create a new function called `count` which increments the `counter` state variable. It should look like this:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract Counter {

    uint256 public counter;

    constructor() {
        counter = 0;
    }

    function count() external {
        counter = counter + 1;
    }

}
```

- Wow! This is all we need!
- Let's deploy this contract on Sepolia. If you are brave enough follow Richard and deploy it to Fuji Avalanche.
- Amazing! Check if the counter is 0 by clicking on it! Also check if the `count` function works by clicking it, signing the transaction and then clicking `counter` again.
- Open up the [Chainlink Automation link](https://automation.chain.link/) and press the blue button saying `Register new Upkeep`. Connect your wallet. Now we are asked to select a trigger for the automation. Please select `Time-based`. At the next step, we are asked to provide a `Target contract address` and copy-paste the address of the contract we just deployed on Sepolia.
- Given that we didn't verify the contract we need to provide an ABI. Return to the Remix tab and on the menu on the left select the `SOLIDITY COMPILER` (It has the Solidity language logo). Ensure the proper contract is selected. Click on `ABI`, this will copy the ABI in your clipboard. Paste it inside the field Chainlink asks for it and press `Next`.
- 
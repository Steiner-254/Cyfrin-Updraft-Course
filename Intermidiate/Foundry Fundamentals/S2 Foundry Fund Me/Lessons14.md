# Foundry tests cheatcodes
- ***Guide on using Foundry tests cheat codes for efficient and effective testing of smart contracts, focusing on deployment strategies, code coverage, and test understanding.***

## Foundry magic: Cheatcodes
- Now that we fixed our deployment script, and our tests have become blockchain agnostic, let's get back to increasing that coverage we were talking about some lessons ago.
- **Reminder:** Call `forge coverage` in your terminal. We need to bring that total coverage percentage as close to 100% as we can! Not all things require 100% coverage, or maybe achieving 100% coverage is too time expensive, but ... 12-13%? That is a joke, we can do way better than that.
- Let's take a moment and look at the `fund` function from `FundMe.sol`. What should it do?
1. `require(msg.value.getConversionRate(s_priceFeed) >= MINIMUM_USD` this means that `fund` should revert if our `msg.value` converted in USDC is lower than the `MINIMUM_USD`;
2. `addressToAmountFunded[msg.sender] += msg.value;` The `addressToAmountFunded` mapping should be updated appropriately to show the funded value;
3. The `funders` array should be updated with `msg.sender`;

- To test all these we will employ some of Foundry's main features ... it's `Cheatcodes`. As Foundry states in the Foundry Book: "Cheatcodes give you powerful assertions, the ability to alter the state of the EVM, mock data, and more.". Read more about them [here](https://book.getfoundry.sh/cheatcodes/).
- To test point 1 we will use one of the most important cheatcodes: `expectRevert` (read more about it [here](https://book.getfoundry.sh/cheatcodes/expect-revert)).
- Open `FundMe.t.sol` and add the following function:

```javascript
    function testFundFailsWIthoutEnoughETH() public {
        vm.expectRevert(); // <- The next line after this one should revert! If not test fails.
        fundMe.fund(); // <- We send 0 value

    }
```

- We are attempting to fund the contract with `0` value, it reverts and our test passes.
- Before jumping on points 2 and 3, let's refactor our code a little bit.
- As we've discussed before storage variables should start with `s_`. Change all the `addressToAmountFunded` mentions to `s_addressToAmountFunded` and all the `funders` to `s_funders`. Another quick refactoring we need to do is to change the visibility of `s_addressToAmountFunded` and `s_funders` to private. Private variables are more gas-efficient than public ones.
- Call a quick `forge test` to make sure nothing broke anywhere.
- Now that we made those two variables private, we need to write some getters for them, i.e. view functions that we will use to query the state of our smart contract.
- Please add the following at the end of `FundMe.sol`:
```javascript
    /** Getter Functions */

    function getAddressToAmountFunded(address fundingAddress) public view returns (uint256) {
        return s_addressToAmountFunded[fundingAddress];
    }

    function getFunder(uint256 index) public view returns (address) {
        return s_funders[index];

    }
```

- 
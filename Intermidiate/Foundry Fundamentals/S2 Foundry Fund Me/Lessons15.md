# Adding more coverage to the tests
- ***This lesson delves into advanced Solidity unit testing techniques. It includes writing robust tests for the 'getFunder' function and testing the contract owner's withdrawal function using the Arrange-Act-Assert methodology. The lesson aims to strengthen your code backend, making it almost bulletproof.***

## Let's keep testing
- In the previous lesson, we tested if the `s_addressToAmountFunded` is updated correctly. Continuing from there we need to test that `funders` array is updated with `msg.sender`.
- Add the following test to your `FundMe.t.sol`:
```javascript
    function testAddsFunderToArrayOfFunders() public {
        vm.startPrank(alice);
        fundMe.fund{value: SEND_VALUE}();
        vm.stopPrank();

        address funder = fundMe.getFunder(0);
        assertEq(funder, alice);

    }
```

- What's happening here? We start with our user `alice` who calls `fundMe.fund` in order to fund the contract. Then we use the `getter` function we created in the previous lesson to query what is registered inside the `funders` array at index `0`. We then use the `assertEq` cheatcode to compare the address we queried against `alice`.
- Run the test using `forge test --mt testAddsFunderToArrayOfFunders`. It passed, perfect!
- Each of our tests uses a fresh `setUp`, so if we run all of them and `testFundUpdatesFundDataStrucutre` calls `fund`, that won't be persistent for `testAddsFunderToArrayOfFunders`.
- Moving on, we should test the `withdraw` function. Let's check that only the owner can `withdraw`.
- Add the following test to your `FundMe.t.sol`:
```javascript
    function testOnlyOwnerCanWithdraw() public {
        vm.prank(alice);
        fundMe.fund{value: SEND_VALUE}();

        vm.expectRevert();
        vm.prank(alice);
        fundMe.withdraw();

    }
```

- What's happening here? We start with our user `alice` who calls `fundMe.fund` in order to fund the contract. We then use Alice's address to try and withdraw. Given that Alice is not the owner of the contract, it should fail. That's why we are using the `vm.expectRevert` cheatcode.
- **REMEMBER:** Whenever you have a situation where two or more `vm` cheatcodes come one after the other keep in mind that these would ignore one another. In other words, when we call `vm.expectRevert();` that won't apply to `vm.prank(alice);`, it will apply to the `withdraw` call instead. The same would have worked if these had been reversed. Cheatcodes affect transactions, not other cheatcodes.
- Run the test using `forge test --mt testOnlyOwnerCanWithdraw`. It passed, amazing!
- As you can see, in both `testAddsFunderToArrayOfFunders` and `testOnlyOwnerCanWithdraw` we used `alice` to fund the contract. Copy-pasting the same snippet of code over and over again, if we end up writing hundreds of tests, is not necessarily the best approach. We can see each line of code/block of lines of code as a building block. Multiple tests will share some of these building blocks. We can define these building blocks using modifiers to dramatically increase our efficiency in writing tests.
- Add the following modifier to your `FundMe.t.sol`:
```javascript
    modifier funded() {
        vm.prank(alice);
        fundMe.fund{value: SEND_VALUE}();
        assert(address(fundMe).balance > 0);
        _;

    }
```

- We first use the `vm.prank` cheatcode to signal the fact that the next transaction will be called by `alice`. We call `fund` and then we assert that the balance of the `fundMe` contract is higher than 0, if true, it means that Alice's transaction was successful. Every single time we need our contract funded we can use this modifier to do it.
- Refactor the previous test as follows:
```javascript
    function testOnlyOwnerCanWithdraw() public funded {
        vm.expectRevert();
        fundMe.withdraw();

    }
```

- Slim and efficient!
- Ok, we've tested that a non-owner cannot withdraw. But can the owner withdraw?
- To test this we will need a new getter function. Add the following to the `FundMe.sol` file next to the other getter functions:
```javascript
    function getOwner() public view returns (address) {
        return i_owner;

    }
```

- Make sure to make `i_owner` private.
- Cool!
- Let's discuss more about structuring our tests.
- The `arrange-act-assert (AAA)` methodology is one of the simplest and most universally accepted ways to write tests. As the name suggests, it comprises three parts:

>> **Arrange:** Set up the test by initializing variables, and objects and prepping preconditions.

>>  **Act:** Perform the action to be tested like a function invocation.

>>  **Assert:** Compare the received output with the expected output.

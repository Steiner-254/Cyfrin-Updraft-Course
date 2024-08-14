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

- 
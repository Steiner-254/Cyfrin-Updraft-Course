# Debug your Solidity tests
- ***A guide to debugging tests in Solidity, including writing and analyzing test functions, using console logs for troubleshooting, and understanding test failures.***

## First failed test
- Let's continue writing tests for our `FundMe` contract. Let's test if the owner (which should be us) is recorded properly.
- Add the following function to your testing file:

```
function testOwnerIsMsgSender() public {
    assertEq(fundMe.i_owner(), msg.sender);
}
```

- Run it via `forge test`.

```
Ran 2 tests for test/FundMe.t.sol:FundMeTest
[PASS] testMinimumDollarIsFive() (gas: 5453)
[FAIL. Reason: assertion failed] testOwnerIsMsgSender() (gas: 22521)
Suite result: FAILED. 1 passed; 1 failed; 0 skipped; finished in 3.85ms (623.00µs CPU time)

Ran 1 test suite in 367.24ms (3.85ms CPU time): 1 tests passed, 1 failed, 0 skipped (2 total tests)

Failing tests:
Encountered 1 failing test in test/FundMe.t.sol:FundMeTest

[FAIL. Reason: assertion failed] testOwnerIsMsgSender() (gas: 22521)
```

- So ... why did it fail? Didn't we call the `new FundMe();` to deploy, making us the owner?
- We can find the answer to these questions in various ways, in the last lesson we learned about `console.log`, let's add some `console.log`s to see more information about the two elements of the assertion.

```
    function testOwnerIsMsgSender() public {
        console.log(fundMe.i_owner());
        console.log(msg.sender);
        assertEq(fundMe.i_owner(), msg.sender);

    }
```

- 
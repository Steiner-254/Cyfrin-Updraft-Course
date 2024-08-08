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

- 

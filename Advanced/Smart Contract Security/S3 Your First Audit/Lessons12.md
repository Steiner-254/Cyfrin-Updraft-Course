# Protocol Tests
- ***Validating protocol tests and coverage, emphasizing thoroughness!***
![alt text](<Images/image copy 12.png>)

- As security researchers our job is to `ultimatly` do what's necessary to make a `protocol` more secure. While we've thoroughly examined everything within scope of `PasswordStore` there can be some value in expanding our recon.
- Test suites should be an expectation of any protocol serious about security, assuring adequate test coverage will be valuable in a `private audit`.

## Testing and Coverage
- Anyone at this stage of the course should be familiar with how to check the `test coverage` of a repo.

```bash
forge build
forge test
```

- The above will run all current tests, to check `coverage` we'll use:

```bash
forge coverage
```

![alt text](<Images/image copy 13.png>)

- Wow! Our `coverage` looks great...right? It's important to note that `coverage` may be a vanity metric and not truly representative of what's being tested for. If we look closely at the tests included, we can see the a major vulnerability we found (`Access Control`) wasn't tested for at all.

```js
function test_owner_can_set_password() public {
    vm.startPrank(owner);
    string memory expectedPassword = "myNewPassword";
    passwordStore.setPassword(expectedPassword);
    string memory actualPassword = passwordStore.getPassword();
    assertEq(actualPassword, expectedPassword);
}

function test_non_owner_reading_password_reverts() public {
    vm.startPrank(address(1));

    vm.expectRevert(PasswordStore.PasswordStore__NotOwner.selector);
    passwordStore.getPassword();
}
```

- In addition to the above, tests aren't going to catch problems with `documentation`, or erroneous `business logic`. It's important not to assume things are fine because our framework tells us so.

### Wrap Up
- We're really `progressing` through this process well and we're ready to write a report for each of our findings. We'll cover this in our next lesson!
- As security researchers our job is to ultimately do what's necessary to make a protocol more secure.
- Test suites should be an expectation of any protocol serious about security, assuring adequate test coverage will be valuable in a `private audit`.
- Being farmiliar with test coverage `forge coverage` for the protocol.
- Always switch to the required and accurate branch for auditting.
- Always check if the tests in the code test for every logic and functions. Sometimes vulnerabilities are fetched and found this way as a quick catch.

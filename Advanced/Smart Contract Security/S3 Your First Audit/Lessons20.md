# Missing Access Controls Proof Of Code
- ***Vulnerability proof: Write test case using the protocols test suite.***

## Wrap Up
- Create fuzz tests as POC.

## Example of a perfect report with that
- Example of a perfect report with that:

### [S-#] `PasswordStore::setPassword` has no access controls, meaning a non-owner could change the password

**Description:** The `PasswordStore::setPassword` function is set to be an `external` function, however the purpose of the smart contract and function's natspec indicate that `This function allows only the owner to set a new password.`

```js
function setPassword(string memory newPassword) external {
    // @Audit - There are no Access Controls.
    s_password = newPassword;
    emit SetNewPassword();
}
```

**Impact:** Anyone can set/change the stored password, severely breaking the contract's intended functionality

**Proof of Concept:** Add the following to the PasswordStore.t.sol test file:

```js
function test_anyone_can_set_password(address randomAddress) public {
        vm.assume(randomAddress != owner);
        vm.startPrank(randomAddress);
        string memory expectedPassword = "myNewPassword";
        passwordStore.setPassword(expectedPassword);

        vm.startPrank(owner);
        string memory actualPassword = passwordStore.getPassword();
        assertEq(actualPassword, expectedPassword);
    }
```

**Recommended Mitigation:** 
- Add an access control conditional to `PasswordStore::setPassword`.

```js
if(msg.sender != s_owner){
    revert PasswordStore__NotOwner();
}
```
# Exploit: Access control
- ***Missing Access Control - Vulnerability Discovered!***

### The First Vulnerability
- Already you may have spotted a vulnerability in this function. Take a moment before reading on to try to find it.

```js
    /*
     * @notice This function allows only the owner to set a new password.
     * @param newPassword The new password to set.
     */
    function setPassword(string memory newPassword) external {
        s_password = newPassword;
        emit SetNetPassword();
    }
```

- The function's `NatSpec` gives us a clear `invariant` - "..only the owner..". This should serve as a clue for what to look for and we should as ourselves...

>> _Can anyone_ _**other**_ _than the_ _**owner**_ _call this function?_

- At first glance, there doesn't seem to be anything preventing this. I think we've found something! Let's be sure to make notes of our findings as we go.

```js
    /*
     * @notice This function allows only the owner to set a new password.
     * @param newPassword The new password to set.
     */
    // @Audit - High - any user can set a password.
    function setPassword(string memory newPassword) external {
        s_password = newPassword;
        emit SetNetPassword();
    }
```


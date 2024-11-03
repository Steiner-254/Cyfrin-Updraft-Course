# Recap II
- ***Patrick recaps the vulnerabilities found so far: `No Owner Check, Erroneous Parameter, Unsafe Storage on Chain`.***

- Let's recap a few of the things we've found while reviewing this protocol so far.

### Vulnerability #1
- First, we found that the `setPassword()` function, while intending to only callable by the `owner`, has no check to ensure this.

```js
function setPassword(string memory newPassword) external {
    s_password = newPassword;
    emit SetNetPassword();
}
```

- This is an `Access Control` vulnerability, allowing anyone to change the password saved, at any time. A proper check for this might look like:

```js
function setPassword(string memory newPassword) external {
  if (msg.sender !== s_owner) {
  revert PasswordStore__NotOwner;
  }
  s_password = newPassword;
  emit SetNetPassword();
}

```

- The above check will assure the function reverts if the caller is not the `owner`. Keep this in mind for our mitigation section of our report!

### Vulnerability 2
- The second issue we came across in our review was something likely informational, but none the less good to note. The `NatSpec` of our `getPassword()` function reads:

```js
/*
 * @notice This allows only the owner to retrieve the password.
 * @param newPassword The new password to set.
 */
```

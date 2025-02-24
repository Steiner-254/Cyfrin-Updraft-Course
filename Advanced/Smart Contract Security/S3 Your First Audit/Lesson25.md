# Assessing Highs
- ***Audit report severity evaluation using likelihood & impact methodology, demonstrated with examples & steps***.

### Assessing Our Severities
- Alright! We're ready to start applying our understanding of `likelihood` and `impact` to the PasswordStore protocol. Let's take a look at our findings.

```js
### [S-#] Storing the password on-chain makes it visible to anyone and no longer private

### [S-#] `PasswordStore::setPassword` has no access controls, meaning a non-owner could change the password

### [S-#] The 'PasswordStore::getPassword` natspec indicates a parameter that doesn't exist, causing the natspec to be incorrect
```

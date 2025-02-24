# Severity Rating Informational
- ***Assessing informational severity as a potential issue, unlikely to disrupt code functionality.***

- This is how our titles look now:
```md
### [H-1] Storing the password on-chain makes it visible to anyone and no longer private

### [H-2] `PasswordStore::setPassword` has no access controls, meaning a non-owner could change the password

### [I-1] The 'PasswordStore::getPassword` natspec indicates a parameter that doesn't exist, causing the natspec to be incorrect
```

### Wrap Up
- Great work! Our report is looking amazing at this stage. We've consolidated our findings into a document that is clear and concise - outlining all the issues we've spotted. Our findings are well formatted and easy to understand with robust `Proofs of Code`.
- What's next?
- Maybe we missed something .. should we go back and do another pass? Let's go over that frame of mind in the next lesson.

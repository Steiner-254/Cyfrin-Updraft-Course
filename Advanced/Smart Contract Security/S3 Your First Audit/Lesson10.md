# Exploit: Public Data
- ***Exploit Public Data - Private Variables Aren't Private! Explore this vulnerability in PasswordStore.***

- Alright, one function down, one to go. Let's take a look at what's next.

```js
/*
* @notice This allows only the owner to retrieve the password.
* @param newPassword The new password to set.
*/
function getPassword() external view returns (string memory) {
    if (msg.sender != s_owner) {
    revert PasswordStore__NotOwner();
    }
    return s_password;
}
```

- Starting, starting as always with the `NatSpec` documentation, we see a couple things to note:

>> * Only the owner should be able to retreive the password (_your_ _`access control`_ _bells should be ringing_)

>> * The function should take the parameter `newPassword`.

- We see a problem on the very next line. This function _doesn't take_ a parameter. Certainly informational, but let's make a note of it.

```js
/*
* @notice This allows only the owner to retrieve the password.
// @Audit - parameter not used by function, NatSpec can be removed
* @param newPassword The new password to set.
*/
```

- Let's take a look at the function itself.
![alt text](<Images/image copy 11.png>)

- The function looks great! Adhering to the required access control, we can be sure only the owner can call this function.
- So we're done, right? Web3 is secure! 🥳
- ...

>> Well, not exactly. There's another issue hidden in this contract and I want you to take a moment before continuing to try to find it.

>> I'll give you a hint: `State Variables`.

...

- We've uncovered a major flaw in the business logic of this protocol. It's best we make a note of this.

```js
address private s_owner;
// @Audit - s_password variable is not actually private! Everything on the blockchain is public, this is not a safe place to store your password.
string private s_password;
```

### Wrap up
- If you're unsure how it's possible for someone to read this data, don't worry - we'll be writing a proof of code to show how it's done. This is something covered in our **[Foundry Course](https://updraft.cyfrin.io/courses/advanced-foundry)** however, consider a refresher if this is entirely new to you as we'll be building on these concepts later on.
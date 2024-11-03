# Recon: Understanding the code
- ***Demonstrates step-by-step approach, note-taking, communication with team. Gain understanding, identify vulnerabilities.***

### How Tincho Cracked the Code
- Tincho, was very pragmatic in his approach, literally going through the code line by line. This method might seem like he was looking for bugs/vulnerabilities in the code. But actually, he was just trying to understand the codebase better. In essence, understanding the functionalities and architecture of the code forms the first and most important part of code inspection.
- So let's take it from the top, just like Tincho did…

### Understanding What the Codebase Is Supposed to Do
- Our client's documentation has let us know what the intended functionality of the protocol are. Namely: A user should be able to store and retreive their password, no one else should be able to see it.
- Let's try to find this functionality within the code as we go through things line by line.

### Scanning the Code from the Top
- After gaining a fundamental understanding, you can start going through the code. You can jump directly to the main functionality. However, to keep things simple, let's just start right from the top and start working our way down.
- First Lines:

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
```

- The open source license seems fine. A compiler version of `0.8.18` may not be an immediate concern, but we do know that this isn't the most recent compiler version. It may be worthwhile to make note of this to come back to.

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Q: Is this the correct compiler version?
```

- Formatting our in-line comments in a reliable way will allow us to easily come back to these areas later by leveraging search.
![alt text](<Images/image copy 9.png>)

### Taking Notes
- As Tincho had advised, creating a separate file to dump thoughts into and compile notes can be a valuable organizational tool. I like to open a file called `.notes.md` and outline things like potential `attack vectors`

>> **Pro Tip**: Some security researchers, like `0Kage` from the Cyfrin team, even print the source code and use different colour highlighters to visualize the codebase better.

### Moving Further
- Next we see some `NatSpec` comments like this can be considered **extended documentation** and will tell us more about what the protocol is expected to do.

```js
/*
 * @author not-so-secure-dev
 * @title PasswordStore
 * @notice This contract allows you to store a private password that others won't be able to see.
 * You can update your password at any time.
 */
```

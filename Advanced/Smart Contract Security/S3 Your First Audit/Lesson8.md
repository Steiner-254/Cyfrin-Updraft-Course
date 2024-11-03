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

- 
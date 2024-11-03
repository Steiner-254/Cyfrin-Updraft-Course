# Recon: Context
- ***Starting in on PasswordStore using The Tincho! Read and understand context & docs, leveraging Solidity Metrics VS Code extension.***

### First Step: Understanding The Codebase
- Alright, we're ready to begin our recon, if you haven't already clone the repo our client has provided us.

```bash
git clone https://github.com/Cyfrin/3-passwordstore-audit.git
cd 3-passwordstore-audit
code .
```

- If we're following `The Tincho` method, our first step is going to be reading the docs and familiarizing ourselves with the codebase. In VS Code, you can click on the `README.MD` file in your workspace and use the command `CTRL + SHIFT + V` to open the preview mode of this document.

>> You can also open the preview pane by opening your command pallet and typing `markdown open preview`.

- Quick tip: Check if an extension must be installed for Vs Code if it's not working for you.
![alt text](<Images/image copy 4.png>)

- Already, we should be thinking about potential attack vectors with the information we've gleaned.
- _Is there any way for an unauthorized user to access a stored password?_
- Once you've finished reading through the documentation, we can proceed to...

### Scoping Out The Files
- Following Tincho's advice our next step will be to organize the files of the protocol in scope and assess their respective complexity. (Spoiler, this first example is pretty simple).

1. Download and install the **[Solidity Metrics](https://marketplace.visualstudio.com/items?itemName=tintinweb.solidity-metrics)** extension for VS Code.
![alt text](<Images/image copy 5.png>)


# Recon: Reading the code
- ***Navigate PuppyRaffle codebase, player entry points, keyboard shortcuts.***
- Pay special attention to the functions marked `public` or `external`. Especially those which `modify state` or are `payable`. These are going to be certain potential attack vectors.

>> **Note:** In Foundry you can use the command `forge inspect PuppyRaffle methods` to receive an output of methods for the contract.

- 
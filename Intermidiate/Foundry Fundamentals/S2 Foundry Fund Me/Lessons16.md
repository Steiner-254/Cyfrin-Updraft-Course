# Introduction to Foundry Chisel
- ***This lesson introduces Chisel, a tool for testing and debugging Solidity code directly in the terminal. It covers the basics of using Chisel, including launching the interactive shell, executing Solidity code, and exploring its functionalities. The lesson is a step-by-step guide to efficient Solidity testing.***

## An Introduction to Chisel
- `Chisel` is one of the 4 components of Foundry alongside `forge`, `cast` and `anvil`. It's a tool that allows users to quickly test the behavior of Solidity code on a local (anvil) or forked network.
- Usually, when you want to test a small Solidity code snippet you go to Remix. But why do that when you have what you need right in the terminal of your Foundry project.
- Type `chisel` in your terminal and press Enter.
- This opens up a shell that awaits your next command. Call `!help` to find out more about what commands are available.
- Basically, you can simply write solidity in the shell then play around and see how it behaves.
- For example:
1. Type `uint256 cat = 1`;
2. Type cat;


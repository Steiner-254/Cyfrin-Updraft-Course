# Tooling: Aderyn
- ***Introducing Aderyn: a static analysis tool for smart contracts, built with Rust by Alex Roan.***

### Introducing Aderyn: A Rust Based Static Analysis Tool
- The second powerful tool we'll be using in this course is a Rust-based analyzer, **[Aderyn](https://github.com/Cyfrin/aderyn)**. This tool was created by the smart contract developer legend **[Alex Roan](https://github.com/alexroan)**.

### Installation of Aderyn
- Before we can use `Aderyn`, we'll need to first install `Rust`. Like `Slither`, we won't go over the specifics of installation, but you can find a guide with installation options available to you **[here](https://www.rust-lang.org/tools/install)**.

### Running Aderyn
- To run Aderyn, the command is `Aderyn [OPTIONS] <root>`. Since we're already in the root directory of our project, we can just run:

```bash
aderyn .
```
- Running this command will compile our contracts, our terminal will display the usual compilation warnings - at the bottom of the output however, we can see _`Detectors run, printing report. Report printed to ./report.md`_

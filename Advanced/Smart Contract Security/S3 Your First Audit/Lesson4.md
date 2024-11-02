# Scoping: cloc
- ***CLOC demonstration - Measure nSLOC, estimate code base audit time.***

- You may have noticed that we skipped over the `Stats` section of the protocol's README. This section of the documentation is comprised of a line count and complexity rating typically and you should be prepared to calculate these details for your client and use them to estimate the duration of your audit. In this lesson we're going to go over how that's done.
- One of the components of the `Stats` section is `nSLOC` or `number of source lines of code`. A very simple tool exists to help us derive this count.
- **[CLOC](https://github.com/AlDanial/cloc)** - cloc counts blank lines, comment lines, and physical lines of source code in many programming languages. It's compatible with Solidity, Python, Rust and many more.


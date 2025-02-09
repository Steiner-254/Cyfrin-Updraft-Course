# Advanced EVM - Recap
- A recap of the advanced EVM concepts covered in the course. It revisits topics like string combination, low-level concepts, binary encoding, and the use of the 'call' function in Solidity, summarizing the key takeaways from the advanced sections of the course.

### Advanced EVM - Encoding Recap
- Before looking at how we can apply all our new encoding knowledge to call our own functions, let's recap some of the things we've gone over so far, there's been a lot.

### Concatenation
- At a high-level, we learnt that abi.encodePacked can be used to concatenate strings.

```js
string memory someString = string(abi.encodePacked("Hi Mom! ", "Miss you!"))
```

>>❗ **PROTIP** Remember: In newer versions of Solidity, you can use `string.concat("Hi Mom! ", "Miss you!")`

### Binary and Opcodes
- We learnt that when a contract is compiled, it's actually compiled into an ABI (application binary interface) and a binary or bytecode format.

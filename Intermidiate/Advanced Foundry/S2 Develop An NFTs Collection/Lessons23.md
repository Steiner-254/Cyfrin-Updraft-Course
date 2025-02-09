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
- Any transaction we send to the blockchain is ultimately compiled down to this bytecode. For contract creation transactions, the data field of the transaction _is_ this bytecode.
- Any system capable of reading the operations contained within this bytecode is said to be `EVM Compatible`.

### Encoding
- We also learnt that we can use the encoding functionality of the EVM to encode basically anything. Basic encoding is accomplished with `abi.encode`, but we've a few options available to us.
- `abi.encode` will result in a padded return value, however the EVM offers a way to save space/gas by packing our encodings through `abi.encodePacked`.

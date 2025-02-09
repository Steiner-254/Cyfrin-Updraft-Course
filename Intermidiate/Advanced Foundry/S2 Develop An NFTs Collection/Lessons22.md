# Advanced EVM - Encoding
- Explores ABI encoding and decoding in the context of EVM. The lesson breaks down the process of converting variables for use in transaction data fields, emphasizing the importance of understanding bytecode and binary for blockchain transactions.

### EVM Encoding
- What we've learnt so far is that any `EVM compatible` chain is looking for the `bytecode` of a transaction in order to understand how it's supposed to respond. We've learnt as well that the global functionality of `abi.encode`, `abi.encodePacked` and `abi.decode` can be used to convert almost any data into this `bytecode` format.
- What these two things combined mean is that we can encode our own function calls as data that we send to a contracts address.
- If we view a function call on Etherscan, we can see the input data in a human readable form as well as its original form, which is the `bytecode` representing that function (`function selector`).
- The ability to do this empowers us as developers to do a lot of cool low-level things like making arbitrary function calls.

I've said previously that in order to send a transaction you're always going to need two things:

1. ABI
2. Contract Address

Originally we were referring to the human-readable ABI.

Human-readable ABI

```json
[
	{
		"inputs": [],
		"name": "multiEncode",
		"outputs": [
			{
				"internalType": "bytes",
				"name": "",
				"type": "bytes"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "multiEncodePacked",
		"outputs": [
			{
				"internalType": "bytes",
				"name": "",
				"type": "bytes"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "multiStringCastPacked",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	}
]
```

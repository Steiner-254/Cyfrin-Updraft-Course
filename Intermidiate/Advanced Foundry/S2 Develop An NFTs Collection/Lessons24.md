### Advanced EVM - Encoding Signatures & Selectors
- Welcome back! Let's bring it all home by learning how we can populate the data field of our transactions to call any function we want.
- Step 1 will be creating a new file in Remix named `CallAnything.sol`.

- Now, in order to execute a function using only the data field of a call we need to encode two things:

1. The function name
2. The function parameters to pass

- To do this, we're going to need to work with a couple new concepts.

1. **function selector** - the first 4 bytes of a function signature
   * **Example:** `0xa9059cbb` - this is the function selector of a `transfer` function.
2. **function signature** - a string which defines a function name and its parameters
   * **Example:** `"transfer(address,uint256)"`

- When we send a call to an address, the EVM determines how to respond based on the data we pass with the transaction. We call specific functions by assuring this data includes the function selector we want engaged when the transaction is placed.
- One way we can acquire the function selector is to encode the entire function signature, and grab the first 4 bytes of the result. Let's see what this looks like in our contract.

```js
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract CallAnything {
    address public s_someAddress;
    uint256 public s_amount;

    function transfer(address someAddress, uint256 amount){
        s_someAddress = someAddress;
        s_amount = amount;
    }
}
```

- The above function will have the exact function signature and function selector we saw in our examples.

**Function Selector:** `0xa9059cbb`
**Function Signature:** `"transfer(address,uint256)"`

- This is great when we already know a function selector, but..

_**How do we acquire the function selector programmatically?**_

- The answer is - we can write a function! There are actually a few different ways we can approach this, let's go through them.

```js
function getSelectorOne() public pure returns(bytes4 selector){
    selector = bytes4(keccak256(bytes("transfer(address,uint256)")));
}
```

- Adding this to our Remix contract, we can compile and deploy. Calling this function results in...

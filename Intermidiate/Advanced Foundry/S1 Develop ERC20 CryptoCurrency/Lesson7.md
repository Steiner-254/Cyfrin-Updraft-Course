# Test your ERC20 using AI
- ***Master the art of writing tests for your smart contracts, incorporating Artificial Intelligence (AI) to enhance the process. This lesson focuses on using AI to generate and execute tests efficiently, offering insights into best practices and considerations when integrating AI into your workspace projects.***

### AI Tests and Recap

- Almost done, you're doing great! The last thing we want to assure is that we're always testing any code we write before it's deployed to a production environment. Fortunately, AI is becoming more and more capable each day at being able to assist us with some basic tests.

>> ❗ **IMPORTANT** I want you to use AI to jumpstart your learning, don't use it to substitute learning. It can be really easy to fall back on having answers provided to us. I strongly encourage you to use AI consciously and with the intent of supporting your efforts, not doing the work for you.

- We're going to write a couple tests together, then see if an AI can help us with some others. Go ahead and create a new file within our `test` folder named `OurTokenTest.t.sol`.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenTest is Test {
    function setUp() public {}
}
```

- 
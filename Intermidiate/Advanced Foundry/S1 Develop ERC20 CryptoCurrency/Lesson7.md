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

- With this boiler plate set up in `OurTokenTest.t.sol` we can begin by declaring `OurToken` and `Deployer` variables and deploying these. We'll also need to create some accounts/addresses for our tests.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenTest is Test {
    OurToken public ourToken;
    DeployOurToken public deployer;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    function setUp() public {
        deployer = new DeployOurToken();
        ourToken = deployer.run();
    }
}
```

- The last thing we need in our `setUp` function is to assure one of our accounts is given some `OurToken` to play with. We wrote `OurToken` to mint it's `INITIAL_SUPPLY` to the `msg.sender`. Let's have our `msg.sender` contract transfer `100 ether` worth of `OurToken` to Bob.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenTest is Test {
    OurToken public ourToken;
    DeployOurToken public deployer;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployer = new DeployOurToken();
        ourToken = deployer.run();

        vm.prank(msg.sender);
        ourToken.transfer(bob, STARTING_BALANCE);
    }
}
```

- Bam! With this we're ready to start writing our first test. We'll start with a simple one, let's assure that the `STARTING_BALANCE` was in fact sent to Bob.

```solidity
function testBobBalance() public view {
    assertEq(STARTING_BALANCE, ourToken.balanceOf(bob));
}
```

- Let's run it!

```bash
forge test --mt testBobBalance
```

- Easy pass. Let's write a couple more tests and then we'll see what AI can do to help us.

### Approvals and transferFrom
- Next, let's test some approvals. The ERC20 standard contains an important function, `transferFrom`. It is often the case that a smart contract protocol may need to transfer tokens _on behalf_ of a user the way this access is controlled is through the `transferFrom` function.
- In summary, an address needs to be approved by another in order to transfer tokens on their behalf, otherwise the transaction should revert with an error.
- Approvals, naturally, are handled through the `approve` and allowance functionality within the ERC20 standard.
- Through these methods a user is able to approve another address to spend, or otherwise interact with, a limited (or often unlimited) number of tokens.

- The security risks associated with this are pretty clear, which is why we've seen services like Etherscan's Token Approval Checker pop up. These allow you to see at a glance which addresses possess approvals for tokens in your wallet.
- While it costs a little gas, it's good practice to regularly assess your approvals and revoke them when no longer applicable or appropriate.

- With all this context in mind, let's look at what a test for OurToken allowances looks like.

```solidity
function testAllowancesWork() public {
    uint256 initialAllowance = 1000;

    // Bob approves Alice to spend 1000 tokens.
    vm.prank(bob);
    ourToken.approve(alice, initialAllowance);

    uint256 transferAmount = 500;

    vm.prank(alice);
    ourToken.transferFrom(bob, alice, transferAmount)
}
```

- 
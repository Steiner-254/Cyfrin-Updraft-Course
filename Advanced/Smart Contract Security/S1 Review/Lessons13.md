# Self Destruct and Review
- ***Understand the use and implications of the `selfdestruct` keyword in Solidity. This lesson explains how `selfdestruct` can remove contracts and force ETH into specified addresses, a unique behavior with significant impact on contract functionality and security.***

## Forever On-chain ... mostly
- The next concept I want you to know is that of the `selfdestruct()` keyword in Solidity. In essence this keyword will destroy, or delete a contract.

## The Unique Characteristic of Selfdestruct
- Why `selfdestruct` stands out lies in its exceptional behavior once a contract gets destroyed. Any Ethereum (or ETH) residing within the deleted contract gets automatically ‘pushed’ or ‘forced’ into any address that you specify.
- Under normal circumstances a contract that doesn't contain a receive or fallback function (or some other payable function capable of receiving funds) cannot have ETH sent to it.
- Only through the use of `selfdestruct` can you be permitted to push any Ethereum into such a contract.
- So if ever you’re hunting for an exploit, or you have identified an attack where you need to force ETH into a contract, `selfdestruct` will be your instrument of choice.

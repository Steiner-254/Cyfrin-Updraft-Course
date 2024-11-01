# The audit process
- ***Learn about the smart contract audit process, explore key steps from initial context gathering to the final mitigation review.***

- When developing smart contracts, understanding and following the audit process is a crucial step towards achieving a more secure protocol. Here, we'll outline an example of this process.

## High-Level Overview of The Audit Process
- The smart contract audit process can be briefly summed up in these steps:

1. **Get Context**: Understand the project, its purpose and its unique aspects.
2. **Use Tools**: Employ relevant tools to scan and analyze the codebase.
3. **Manual Reviews**: Make a personal review of the code and spot out unusual or vulnerable code.
4. **Write a Report**: Document all findings and recommendations for the development team.

- To illustrate how this pans out in reality, we can look at the Tincho method used to audit ENS – a process that landed him a cool $100,000 payout! We'll delve into this later on.

## Breakdown of the Audit Process
- For a more detailed perspective, let’s consider the process as broken into three distinct phases:

**Initial Review:** The initial review of a protocol can also be broken down into 4 distinct phases.

* Scoping - This is getting a sense of the protocol. In this phase, auditors go through the code to scope it. This gives an idea of how much time might be required for the audit, which can then be used to establish pricing. Key tasks include identification of all the contract’s dependencies and a general overview of the code. At this stage, auditors don’t dig deep into anything yet.
* Reconnaissance - Here an auditor starts walking through the code, running tools, interacting with the protocol in an effort to break it.
* Vulnerability Identification - An auditor determines which vulnerabilities are present and how they're exploited as well as mitigation.
* Reporting - Compile a report detailing all of the identified vulnerabilities and recommendations to make the protocol more secure.

>> "Your job is to do whatever it takes to make the protocol more secure."

**Protocol Fixes:** At this stage the protocol will take an auditor's report and work towards implementing suggested changes and mitigation. The length of time of this period can vary based on complexity of the issues, number of vulnerabilities identified and more.

**Mitigation Review:** Once a protocol has employed and tested all of the recommended fixes, a review is conducted with a focus on verifying that previously reported vulnerabilities have been resolved.

# What is a smart contract audit?
- ***This lesson delves into what a `smart contract audit`, or more accurately, a `security review`, truly entails. It discusses the three phases of a `security review`, the importance of these reviews in ensuring code security on immutable blockchain systems, and effective `techniques` used in the `process`. The lesson also emphasizes the distinction between the terms '`audit`' and '`security review`' and their implications in the context of blockchain and smart contracts.***

- You might think you've got a grip on what a smart contract audit is all about, but this lesson aims to help you dive deeper and truly comprehend the whole process. Brace yourself, as today we are stepping into the interesting realm of security reviews.
- Let's start off by stating that the term "smart contract audit" is a bit of a misnomer. As a more appropriate alternative, I am a stout advocate of "security review." I even have a T-shirt to prove my allegiance!
- You might be wondering why this change of terms is required. Well, it’s because the term 'audit' might wrongly insinuate some kind of guarantee or even encompass legal implications. A security review, being free of these misconceptions, exudes the essence of what we are actually doing: looking for as many bugs as possible to ensure maximum code security.

>> Note: Despite this, many protocols still insist on requesting a "smart contract audit," so it's eminent to know that the terms are interchangeable. When you hear "security review", think "smart contract audit" and vice versa. Protocols are often unaware of these nuances, but you, as a trained security researcher, know better!

- By now, I hope you're questioning with anticipation: "What does a security review entail?"

## The Three Phases of a Security Review
- Right in our GitHub repository, we detail the three phases of a security review and what that process looks like.

```Solidity
1. Initial Review
        a. Scoping
        b. Reconnaissance
        c. Vulnerability identification
        d. Reporting
2. Protocol fixes
        a. Fixes issues
        b. Retests and adds tests
3. Mitigation Review
        a. Reconnaissance
        b. Vulnerability identification
        C. Reporting
```

- To give you a heads-up, there really isn't a "one-size-fits-all" approach to smart contract auditing. There are several unique strategies, each bringing a different set of pros and cons to the table.
- In this course we'll discuss two particularly effective techniques, `"the Tincho"` and `"the Hans"`, to help familiarize you with the process. However, remember that these are just examples; there isn’t a definitive, "correct" way of performing a security review.
- Before we delve into the specifics, let's discuss why security reviews are critical.

## Importance of Security Reviews

>> A smart contract audit is a timeboxed, security based review of your smart contract system. An auditor's goal is to find as many vulnerabilities as possible and educate the protocol on ways to improve their codebase security and coding best-practices moving forward.

- As code deployed to a blockchain is immutable, it’s crucial that it's error-free before deployment. The permissionless and adversarial nature of the blockchain means that protocols need to be ready to repel malicious users. Failure to do so can lead to hefty monetary losses, as evidenced by the nearly \$4 billion stolen due to smart contract vulnerabilities last year.
- The benefits of conducting a security review go beyond just minimizing vulnerabilities.
- It also aids protocol developers in enhancing their understanding of the code itself, thereby accelerating feature implementation and increasing effectiveness. A security review can also familiarize your team with the latest trends and tooling in the space.

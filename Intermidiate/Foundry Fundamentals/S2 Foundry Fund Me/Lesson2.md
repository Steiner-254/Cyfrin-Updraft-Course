# Fund Me project setup
- ***Introduction to the Foundry FundMe project, including setting up GitHub, understanding the FundMe contract, exploring storage and state variables, and creating a new Foundry project folder.***

## Foreword
- Welcome the the second section of `Foundry Fundamentals`. Here we'll cover `Fund Me`, a simple funding contract. You will learn:

1. How to push your project to GitHub;
2. Write and run amazing tests;
3. Advanced deploy scripts, used to deploy on different chains that require different addresses;
4. How to use scripts to interact with contracts, so we can easily reproduce our actions;
5. How to use a price feed;
6. How to use Chisel;
7. Smart contract automation;
8. How to make our contracts more gas efficient;
9. And many more interesting things!

- Until now, we talked a lot about `storage` and `state`, but we didn't delve into what they really mean. We will learn what all these means! We used this project before when we used `Remix`.

## Fund Me
- Going through the [repo](https://github.com/Cyfrin/foundry-fund-me-cu) we can see that our contract is in the `src folder`. Let's open `FundMe.sol`. As you can see we are employing some advanced tools/standard naming conventions:

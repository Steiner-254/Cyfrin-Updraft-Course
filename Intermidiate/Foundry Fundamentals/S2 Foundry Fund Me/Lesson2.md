# Fund Me project setup
- ***Introduction to the Foundry FundMe project, including setting up GitHub, understanding the FundMe contract, exploring storage and state variables, and creating a new Foundry project folder.***

## Foreword
- Welcome the the second section of `Foundry Fundamentals`. Here we'll cover `Fund Me`, a simple funding contract. You will learn:

1. How to `push` your project to GitHub;
2. `Write` and `run` amazing `tests`;
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

1. We use a named error `FundMe__NotOwner();`;
2. We use all caps for `constants`;
3. `i_` for immutable `variables`;
4. `s_` for private `variables`;

- Let's clone this project locally. Open your VS Code, and make sure you are in the `foundry-f23` folder, if not use cd to navigate to it. If we run the `ls` command in the terminal, we'll see that the only thing present in the `foundry-f23` folder is the `foundry-simple-storage-f23` folder that we used in the previous section. Run the following command in your terminal:

```
$ mkdir foundry-fund-me-f23 

$ cd foundry-fund-me-f23 

$ code .
```

- The first line creates a new folder called `foundry-fund-me-f23`. The second line changed the directory into the newly created folder. The last line opens up a new VS Code instance using the newly created folder. Now we can apply the knowledge we acquired in the previous section to create a fresh `Foundry project`. Do you remember how? If you do, please proceed in creating a Foundry project on your own. If not peek down below. No worries, we all forget stuff, please run the following command:

```
forge init
```

OR

```
forge init --force
```

- Foundry will populate the project with the Counter files, the script, the main contract and the test. Before deleting it, let's look a bit through these.

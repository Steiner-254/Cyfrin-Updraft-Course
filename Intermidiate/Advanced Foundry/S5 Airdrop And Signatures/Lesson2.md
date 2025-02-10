# Project Setup
- Setting up the Foundry project and creating an ERC20 token to airdrop.

### Setup
- We can begin by creating a repository for our project with the command `mkdir merkle-airdrop` and navigate into it. Ensure you're on the regular version of Foundry by typing `foundryup` in your terminal. You can then run `forge init` to initialize an empty foundry project.

### BagelToken
- The token that we are going to airdrop will be a ERC20 token. In the same directory we can make a `BagelToken.sol` contract, where we will use the OpenZeppelin libraries `ERC20` and `Ownable` to create it. For that we first need to install the dependency with the command `forge install openzeppelin/openzeppelin-contracts --no-commit`.

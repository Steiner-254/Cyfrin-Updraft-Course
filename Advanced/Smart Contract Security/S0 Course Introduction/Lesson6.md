# Exercises
- ***Prepare for practical exercises that will help you apply your knowledge and skills gained throughout the course.***

### Section 0: Excercises
- The first exercise is important. This is **just for you**. This isn't meant to be a motivation to share with others, or chat about publicly, this is what inspired you to take the first step and what will continue to inspire you to take the next.
- This is for you.
- Make it as long and detailed as possible. Pour your emotion into defining why you want this. Don't bullsh*t yourself. There'll be opportunities to shout your accomplishments loudly - but this is just for you.

## Exercise
? 🎯 **Exercise:** `Write yourself a message about why you want this`

```md
(confidential)
```

- This will be important for when things get hard Is it money? Save web3? Become someone? Write down as many reasons as possible.

## Section 0 NFT Challenge 👀
- [Welcome! (Arb)](https://arbiscan.io/address/0xf923431da74ecc873c4d641fbdfa2564baafca9f#code)
- [Welcome! (Sepolia)](https://sepolia.etherscan.io/address/0x39338138414df90ec67dc2ee046ab78bcd4f56d9)

- Web3 has the ability to change almost everything.

## Solution To The Challenge:
- [Sepolia](https://sepolia.etherscan.io/address/0x39338138414df90ec67dc2ee046ab78bcd4f56d9)

# Solving the Sepolia CTF Challenge

## Challenge Overview
The challenge requires calling the `solveChallenge` function on the contract `S0.sol` to mark it as solved and receive an NFT reward.

- **Contract Address:** `0x39338138414Df90EC67dC2EE046ab78BcD4F56D9`
- **Function to Call:** `solveChallenge(string twitterHandle)`

## Steps to Solve the Challenge

### **Method 1: Using Etherscan (Simplest)**
1. Go to [Sepolia Etherscan](https://sepolia.etherscan.io/).
2. Search for the contract address.
3. Navigate to the **"Write Contract"** section.
4. Connect your **MetaMask** wallet (ensure you're on the Sepolia Testnet).
5. Locate the `solveChallenge` function.
6. Enter your Twitter handle as a string (`"yourTwitterHandle"`) or leave it blank (`""`).
7. Click **"Write"** and confirm the transaction in MetaMask.
8. Check **Etherscan** under **ERC-721 Token Transfers** to verify NFT minting.

### **Method 2: Using Foundry**
Run the following command in your terminal:
```bash
cast send 0x39338138414Df90EC67dC2EE046ab78BcD4F56D9 \
    "solveChallenge(string)" "yourTwitterHandle" \
    --rpc-url <YOUR_SEPOLIA_RPC_URL> \
    --private-key <YOUR_PRIVATE_KEY>
# Confirming Success

## ✅ Check Transaction Status
- Open **MetaMask** and go to the **Activity Tab**.
- Look for the transaction related to the contract interaction.
- If the status is **"Confirmed"**, the transaction was successful.

## 🔎 Verify on Etherscan
- Go to [Sepolia Etherscan](https://sepolia.etherscan.io/).
- Enter your wallet address in the search bar.
- Check **ERC-721 Token Transfers** to see if the NFT was minted.

## 🎨 View NFT in MetaMask
1. Open **MetaMask** and navigate to the **NFTs** tab.
2. Click **"Import NFTs"**.
3. Enter the **Contract Address** and **Token ID** (found on Etherscan).
4. Click **"Add"**, and your NFT should appear.

🎉 **Challenge Solved!** 🎉

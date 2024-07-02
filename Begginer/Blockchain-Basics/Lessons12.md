# Signing transactions
- To help understand the fundamentals of how concepts like public and private keys as well as signing transactions, we'll again be leveraging an incredible resource by Anders Brownworth available [here](https://andersbrownworth.com/blockchain/public-private-keys/)

## Public and Private Keys
- In this lesson, all the pieces we learnt about with Metamask should start coming together.
- Understanding the relationship between private and public keys is essential to grasping the concept of blockchain transactions. In essence, a private key is a randomly generated secret key used to sign all transactions.
- The private key is then passed through an algorithm (the Elliptic Curve Digital Signature Algorithm for Ethereum and Bitcoin) to create the corresponding public key. Both the private and public keys are central to the transaction process. However, while the private key must remain secret, the public key needs to be accessible to everyone.
- When we send a transaction to the blockchain, we're passing a private key - this allows others to verify the transaction through the generated public key

## How does Transaction Signing Happen?
- When we sign a transaction on the blockchain, we're digitally signing some data with our private key. The hashing algorithm used makes it impossible for something to derive your private key from a message signature.
- This signing method allows anyone to verify the validity of a transaction by comparing the message signature to a user's public key!

## Importance of Hiding Private Keys
- Your Metamask account's private key is accessible through Account Details > Show Private Key. You'll be asked to provide a password, again underscoring the importance of keeping this key safe.
- Anyone with access to your private key can perform and sign transactions, on your behalf consequently making it absolutely vital to safeguard private keys.

>> Note: As an interesting side note, wallet addresses, like the one Metamask provided to you, are actually derived from your public key. A public key is passed through the Ethereum Hashing Algorithm, the last 20 bytes of the resulting hash is the address!

##

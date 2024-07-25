# Never Use A Env File
- *In this lesson we'll finally rid ourselves of risky development practices and learn to employ methods to properly safeguard our private keys. Move past .env variables and never mistakenly compromise yourself again.*

## Meanwhile, some things have changed
- In our previous lesson, we showed you how to configure and use a .env file to hold your private key and rpc url, some developments have taken place since that lesson was made so ... ***You should never use a .env again***.

## Encrypting your Keys Using ERC2335
- For now, let's pretend our private key is this: `0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 (key 0 from Anvil)` Type the following command in your terminal:
 ```
 cast wallet import nameOfAccountGoesHere --interactive
 ```

 -  Ideally, you don't do this in your VS Code. You will be asked for your private key and a password to secure it. You will do this only once, which is amazing! If you remember, last lesson we deployed running the following command:
 ```
 forge script script/DeploySimpleStorage.s.sol --rpc-url $RPCURL --broadcast --private-key $PRIVATEKEY
 ```
 
 - Now that we configured our wallet we can deploy as following:
 ```
 forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --account nameOfAccountGoesHere --sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
 ```
 >> You will be asked for your `password`. You won't be able to deploy without your `password`.

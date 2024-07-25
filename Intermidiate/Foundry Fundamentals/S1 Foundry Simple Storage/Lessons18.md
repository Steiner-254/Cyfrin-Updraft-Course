# Important: private key safety pt.2
- *Guide on private key safety for interacting with deployed contracts, covering command line interfaces, environment file setup, and secure coding practices*.

## How to not have your private key in the command line
- Some lessons ago we deployed SimpleStorage using the following command: 
```
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```

- Having our private key in plain text is very bad, as we've explained in Lesson 13. What can we do to avoid this, except using the --interactive parameter, because we don't want to keep copy-pasting our private key? ***BIG BOLDED DISCLAIMER: What we are about to do is fine for development purposes, do not put a real key here, it very terrible for production purposes***.
- Create a new file in the `root` of your project called `.env`. Then go the the `.gitignore` file and make sure `.env` is in there. The `.env` file will *host environment variables*. Variables that are of a sensitive nature that we don't want to expose in public. Open the file and put the following in it:
```
PRIVATEKEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 RPCURL=http://127.0.0.1:8545
```

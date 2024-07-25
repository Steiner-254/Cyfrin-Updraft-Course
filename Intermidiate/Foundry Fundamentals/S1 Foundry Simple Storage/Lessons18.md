# Important: private key safety pt.2
- *Guide on private key safety for interacting with deployed contracts, covering command line interfaces, environment file setup, and secure coding practices*.

## How to not have your private key in the command line
- Some lessons ago we deployed SimpleStorage using the following command: 
```
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```


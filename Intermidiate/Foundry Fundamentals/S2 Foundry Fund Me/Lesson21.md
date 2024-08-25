# Automate your smart contracts actions - Makefile
- ***Learn to streamline your development workflow using Makefiles. This lesson teaches how to automate the building and deployment processes of smart contracts. It includes detailed examples of deploying to networks like Sepolia and setting up a comprehensive Makefile for various development tasks.***

## The magic of Makefile
- You are a hero for getting this far! If you think a bit about your experience with the whole `FundMe` project by now, how many times have you written a `forge script NameOfScript --rpc-url xyz --private-key 0xPrivateKey ...`. There's got to be an easier way to run scripts and other commands.
- The answer for all your troubles is a `Makefile`!
- A `Makefile` is a special file used in conjunction with the `make` command in Unix-based systems and some other environments. It provides instructions for automating the process of building software projects.
- The main advantages of using a `Makefile` are:

>> * Automates tasks related to building and deploying your smart contracts.

>> * Integrates with Foundry commands like `forge build`, `forge test` and `forge script`.

>> * Can manage dependencies between different smart contract files.

>> * Streamlines the development workflow by reducing repetitive manual commands.

>> * Allows you to automatically grab the `.env` contents.

- In the root folder of your project create a new file called `Makefile`.
- After creating the file run `make` in your terminal.
- If you have `make` installed then you should receive the following message:

```javascript
make: *** No targets.  Stop
```

- If you don't get this message you need to install `make`. This is a perfect time to ask your favorite AI to help, but if you still don't manage it please come on the Updraft section of Cyfrin discord and ask the lovely people there.
- Let's start our `Makefile` with `-include .env` on the first line. This way we don't have to call `source .env` every time we want to access something from it.
- Soo... how do we actually write a shortcut?
- Let's write one for `forge build`.
- In your `Makefile` write the following line:

```javascript
build:; forge build
```

- Run `make build` in your terminal.

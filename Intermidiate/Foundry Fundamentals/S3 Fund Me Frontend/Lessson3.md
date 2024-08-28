# Introduction to window.ethereum
- ***Exploration of MetaMask's interaction with JavaScript websites, focusing on the use of the \`window.ethereum\` object and smart contract interactions.***

## Browser Wallets
- The first concept we need to grasp when working with a website in Web3 is that of a browser wallet - in our case Metamask. It's through a wallet like Metamask that we are able to interact with the blockchain and the Web3 ecosystem.
- We can gain more insight into how this works by right-clicking our `FundMe` website and selecting `inspect`. You can also open this panel by pressing F12.
- Navigate to the console tab of this panel. This tab contains a live JavaScript shell which houses a tonne of information about the browser we have open. Among this data is a JavaScript object, `window`.
- By typing `window` and hitting enter the console will display this object and all of the functions it contains.
- There are some properties of this object which are not there by default, one of which is `window.ethereum`. It's through this property that a front end is able to interact with our wallet and it's accounts.

>> Try inspecting a browser without a browser wallet installed. You'll see that `window.ethereum` doesn't exist!

- I recommend reading the **[Metamask documentation](https://docs.metamask.io/guide/)** on the window\.ethereum object to learn more.

## The Code
- Alright, great. How does the code which interacts with all this look like? We can take a look at the `index.js` file in our html-fund-me repo for this.

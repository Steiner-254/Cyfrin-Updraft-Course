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
- One of the first things you'll see is a `connect` function. This is pretty ubiquitous and is how most Web3 websites are told _Hey, I have a browser wallet, here are the accounts I want to use._

```javascript
async function connect() {
  if (typeof window.ethereum !== "undefined") {
    try {
      await ethereum.request({ method: "eth_requestAccounts" });
    } catch (error) {
      console.log(error);
    }
    connectButton.innerHTML = "Connected";
    const accounts = await ethereum.request({ method: "eth_accounts" });
    console.log(accounts);
  } else {
    connectButton.innerHTML = "Please install MetaMask";
  }
}
```

- We see the first thing that this function does is checks for our `window.ethereum` object then connects and requests accounts.

>> > **Note:** This request for accounts does **not** provide access to your private key. It allows the website to send transaction requests to your wallet in order for you to sign.

- Let's look briefly at the HTML and how it calls this function.

```javascript
<body>
  <button id="connectButton">Connect</button>
  ...
</body>
```

- The body of our `index.html` contains this button (among others) with the `id` `connectButton`.
- Switching to our `index.js` we see this:
```javascript
const connectButton = document.getElementById("connectButton")
...
connectButton.onclick = connect
```

- This grabs the element of the webpage by the `id` we set and then uses the `onClick` method to call our `connect` function!

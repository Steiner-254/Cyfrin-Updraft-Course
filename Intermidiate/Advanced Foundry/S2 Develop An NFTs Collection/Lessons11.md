# IPFS and Pinata vs HTTP vs on chain SVGs
- ***Discusses the pros and cons of using IPFS, HTTP, and on-chain SVGs for storing NFT data. It covers the pitfalls of each method and introduces services like Piñata Cloud for securing digital assets on IPFS.***

### The issue with IPFS vs HTTPS
- In this lesson we'll discuss two ways we can reference our data in `IPFS` and ways we can strengthen the hosting of it to ensure it's always made available.
- First things first: Let's discuss the **InterPlanetary File System (IPFS)** and the pros and cons associated with it.

### IPFS
- We learnt previously that there are two ways to reference the location of data hosted by `IPFS`. We can point directly to the `IPFS` network with the syntax `ipfs://<CID>` _or_ we can use the `IPFS Gateway` and point to an IPFS server via `https://ipfs.io/ipfs/<CID>`.
- There are some important considerations to keep in mind here. If we decide to use the `IPFS Gateway`, this is essentially pointing to a website hosted on a server by `IPFS`. If this website or server goes down for any reason the data we're pointing to will be unretrievable!
- Imagine losing the art of your NFT forever!
- A safer methodology is pointing to the `IPFS` network directly, but this comes with caveats. While the URI is pointing to a decentralized network, assuring the data is accessible so long as a node is still hosting it, most browsers and services don't natively support interfacing with the `IPFS` network. This can make viewing and interacting with your NFT cumbersome.
- In addition to the above, the `IPFS` network doesn't automatically distribute all data amongst all nodes on the network (like a blockchain would). Instead it relies on nodes pinning the data they find valuable to assure it's available to the rest of the network. If I'm the only person pinning my data on `IPFS`, I'm not any more decentralized than using the `IPFS Gateway`.

_**So, how do we solve this?**_

### Pinning Services
- Fortunately, there are services available which developers can use to pin their data for them, decentralizing access to it. One such service is **[Pinata.cloud](https://www.pinata.cloud/)**.
- Once an account is created and you've logged in, the UI functions much like an `IPFS` node and you can simply upload any files you want the service to pin on your behalf.
- Once uploaded, `Pinata` will provide a `CID`, just like `IPFS` itself will.

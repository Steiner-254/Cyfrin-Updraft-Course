# Introduction to IPFS
- **Learn about the Interplanetary File System (IPFS), a decentralized data storage system, and its use in NFT development. Understand the concept of hashing data, pinning it on IPFS nodes, and the global network of nodes, differentiating it from blockchain in terms of data storage and access.**

### IPFS
- In this lesson let's dive into the `Interplanetary File System (IPFS)`, how it works and what it means for decentralization of data. You can find additional information in the **[IPFS documentation](https://docs.ipfs.io/)**
- This is a distributed decentraliosed storage. It's not a blockchain but it's similar to a blockchain.
- So, how does IPFS work?
- It all starts with the data we want hosted. This can be more or less anything, code, images, some other file, it doesn't matter. As we know, any data can be hashed and this is essentially what IPFS Node's do initially. We provide our data to the IPFS network via a Node and the output is a unique hash that points to the location and details of that data.
- Each IPFS Node is once part of a much larger network and each of them constantly communicates to distribute data throughout the network. Any given node can choose to pin particular pieces of data to host/persist on the network.

>> ❗ **NOTE** `IPFS` isn't able to execute logic or perform computation, it only serves as a means of `decentralized storage`.

- What we would do then is upload our data to IPFS and then pin it in our node, assuring that the IPFS Hash of the data is available to anyone calling the network.
![alt text](<Images/image copy 6.png>)

- Importantly, unlike a blockchain, where every node has a copy of the entire register, IPFS nodes can choose what they want to pin.

### Using IPFS
- There are a few ways to actually use IPFS including a CLI installation, a browser companion and even a dedicated desktop application.
- Let's go ahead and **[install the IPFS Desktop application](https://docs.ipfs.tech/install/ipfs-desktop/)**. Once installed you should be able to open the application and navigate to a files section that looks like this:

![alt text](<Images/image copy 7.png>)

- Pay no mind to all my pictures of cats. If you have no data to view, navigate to import in the top right and select any small file you don't mind being public.

>> ❗ **IMPORTANT** Any data uploaded to this service will be _**public**_ by nature.

![alt text](<Images/image copy 8.png>)

- Once a file is uploaded, you can click on that file and view that data.



- Alternatively, if you're having trouble viewing your data directly from the IPFS network you can use the IPFS Gateway. When using a gateway, you're not directly requesting the data from the IPFS Network, you're requesting through another server which makes the request on your behalf, so it brings to question centrality and things again, but I digress. You can view the data via the Gateway with this syntax:

```Solidity
https://ipfs.io/ipfs/<CID>
```

![alt text](<Images/image copy 10.png>)

### Wrap Up
- Decentralized storage solutions can certainly be confusing, but hopefully with the guidance here and a little practice uploading and sharing you data through a service like IPFS will become easier in time. Often the hardest part of this process is a product of browser compatibilities with IPFS, so if things don't work immediately for you, don't worry.
- In the next lesson we'll bring home our understanding of IPFS and how we'll be using it with respect to our Doggie NFT project.
- See you there!

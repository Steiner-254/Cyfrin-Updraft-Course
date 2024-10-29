# Upload and use IPFS data (token URI)
- ***This section explores using IPFS for hosting NFT images and metadata, focusing on OpenSea for practical demonstration. It also covers the customization of NFT appearances by allowing users to choose their Token URI, thus determining the look of their tokens.***

### Using IPFS
- In a **[previous lesson](https://updraft.cyfrin.io/courses/advanced-foundry/how-to-create-an-NFT-collection/foundry-setup)** we discussed tokenUris and I walked you through an example of viewing the `TokenURI` of a token on `OpenSea`.

```js
{
  "attributes": [
    {
      "trait_type": "Background",
      "value": "Mint"
    },
    {
      "trait_type": "Skin",
      "value": "Dark Gray"
    },
    {
      "trait_type": "Body",
      "value": "Turtleneck Pink"
    },
    {
      "trait_type": "Face",
      "value": "Blushing"
    },
    {
      "trait_type": "Head",
      "value": "Headband"
    }
  ],
  "description": "A collection 8888 Cute Chubby Pudgy Penquins sliding around on the freezing ETH blockchain.",
  "image": "ipfs://QmNf1UsmdGaMbpatQ6toXSkzDpizaGmC9zfunCyoz1enD5/penguin/420.png",
  "name": "Pudgy Penguin #420"
}
```

>> ❗ **NOTE** Notice how the `image` property has _its own_ IPFS hash! This is storing what the NFT looks like!

- When this course was originally filmed, the Pudgy Penguins collection had been using IPFS's Gateway to access their images within the TokenURI

```js
"https://ipfs.io/ipfs/QmNf1UsmdGaMbpatQ6toXSkzDpizaGmC9zfunCyoz1enD5/penguin/420.png";
```

- This works, and is often leveraged due to browser compatibily with IPFS, but it's worth noting that this is pointing to a centralized server. If that server goes down, the image data will be unretrievable via the tokenURI call!
- A more decentralized way to retrieve the image data is by pointing to the IPFS netwok itself.

```js
"ipfs://QmNf1UsmdGaMbpatQ6toXSkzDpizaGmC9zfunCyoz1enD5/penguin/420.png";
```

### Doggies
- With a better understanding of IPFS and decentralized storage in hand, let get back to our BasicNFT contract. If you want, you can take and image I've provided (or your own) and upload it to IPFS to acquire your own hash. Alternatively, if you want to make things easy on yourself:

```js
"ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
```

- 
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

- 
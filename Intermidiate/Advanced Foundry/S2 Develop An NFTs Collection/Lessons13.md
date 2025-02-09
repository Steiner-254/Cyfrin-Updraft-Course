## Create a dynamic NFTs collection
- Focuses on creating dynamic SVG NFTs, particularly a mood-changing NFT that alternates its appearance. It includes detailed instructions for setting up the NFT project, minting the NFTs, and defining their appearance.

## OpenZeppelin Updates
- OpenZeppelin has replaced '\_isApprovedOrOwner' with '\_isAuthorized'
- In the flipMood function '\_checkAuthorized' should be used instead of '\_isApprovedOrOwner'
- Adjusted Code:

```js
function flipMood(uint256 tokenId) public {
    // Fetch the owner of the token
    address owner = ownerOf(tokenId);
    // Only want the owner of NFT to change the mood.
    _checkAuthorized(owner, msg.sender, tokenId);

    if (s_tokenIdToMood[tokenId] == Mood.HAPPY) {
        s_tokenIdToMood[tokenId] = Mood.SAD;
    } else {
        s_tokenIdToMood[tokenId] = Mood.HAPPY;
    }
}
```

### SVG NFT
- Ok, we've gained lots of context and understand about data storage in general and the benefits of `SVGs` specifically. Let's begin creating our very own dynamic `MoodNFT` with its `SVG` art stored on-chain.
- At the core of the NFT we'll build is a `flipMood` function which allows the owner to flip their NFT between happy and sad images.

# Important: private key safety pt.1
- *In-depth guide on private key safety for blockchain developers, covering best practices, shell history clearing, and secure methods for handling private keys.*

## Practicing Private Key Safety
- Having a private key in plain text is extremely bad. The private key(s) we used in the last lesson are well-known keys for local testing, you shouldn't use those on mainnet and keeping them in plain text is ok, but any other private key should be kept hidden, especially your production key or key's associated with accounts that hold crypto. Moreover, it's very bad to have private keys in bash history (hit the up arrow and see the key you used to deploy). You can delete your history by typing: ``` history -c ``` We will teach you more about how to secure private keys in one of the next lessons.

## Your Safety Promise
- It's time now to articulate your promise for maintaining private key safety. Create a file titled `Promise.md`. In this file, make it a point to write down your promise: ``` I promise to never use my private key associated with real money in plain text. ``` If you feel comfortable doing so, consider tweeting this to affirm and secure your pledge. Make sure to tag @PatrickAlphaC and @CyfrinUpdraft or any other professional in this field to hold yourself accountable. Hacking private keys is one of the most important reasons people and projects lose absurd amounts.

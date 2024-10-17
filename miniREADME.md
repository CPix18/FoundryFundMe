# WebsiteFundMe

Big thanks to Patrick Collins from Cyfrin for the videos and github repos!

*[⭐️ (2:37:02) | Lesson 8: HTML Fund Me](https://www.youtube.com/watch?v=sas02qSFZ74&t=9422s)*

This is a minimalistic example what you can find in the [metamask docs](https://docs.metamask.io/guide/create-dapp.html#basic-action-part-1).

- [html-fund-me-f23](#html-fund-me-f23)
- [Requirements](#requirements)
- [Quickstart](#quickstart)
  - [Execute a transaction - Local EVM](#execute-a-transaction---local-evm)
- [Thank you!](#thank-you)


# Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you've installed it right if you can run:
    - `git --version`
- [Metamask](https://metamask.io/)
  - This is a browser extension that lets you interact with the blockchain.

# Quickstart 

1. Clone the repo

```
git clone https://github.com/CPix18/Foundry_Fund_Me
cd WebsiteFundMe
```

2. Run the `index.html` file

You can usually just double click the file to "run it in the browser". Or you can right click the file in your VSCode and run "open with live server" if you have the live server VSCode extension (ritwickdey.LiveServer).

And you should see a button that says "connect".

Hit it, and you should see metamask pop up.

## Execute a transaction - Local EVM

If you want to execute a transaction follow this:

Make sure you have the following installed:

1. You'll need to open up a second terminal and run:

```
git clone https://github.com/Cyfrin/foundry-fund-me-cu
cd foundry-fund-me-cu
make build
make anvil
```

Then, in a second terminal
```
make deploy
```

This will deploy a sample contract and start a local hardhat blockchain.

2. Update your `constants.js` with the new contract address.

In your `constants.js` file, update the variable `contractAddress` with the address of the deployed "FundMe" contract. You'll see it near the top of the hardhat output.

3. Connect your [metamask](https://metamask.io/) to your local hardhat blockchain.

> **PLEASE USE A METAMASK ACCOUNT THAT ISNT ASSOCIATED WITH ANY REAL MONEY.**
> I usually use a few different browser profiles to separate my metamasks easily.

In the output of the above command, take one of the private key accounts and [import it into your metamask.](https://metamask.zendesk.com/hc/en-us/articles/360015489331-How-to-import-an-Account)

Additionally, add your localhost with chainid 31337 to your metamask.

1. Refresh the front end, input an amount in the text box, and hit `fund` button after connecting

# Thank you!

If you appreciated this, feel free to follow me or donate!

ETH/Arbitrum/Optimism/Polygon/etc Address: 
0x75C875c4b81D792797c6ccCe724c03FE8d31FE0e

[![Collin Pixley Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/l2explorer.eth)
[![Collin Pixley Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/collinpixley/)


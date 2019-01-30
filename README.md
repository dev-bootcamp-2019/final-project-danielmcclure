# Final Project: Simple Online Marketplace

## WARNING: 
**This is development software as part of a training course and is not designed to be used in production code.**

## Project Description

**Goal**: Create an online marketplace that operates on the ethereum blockchain.
 
**Reality**: Project was delayed and ultimately time ran out whilst developing so I ask that you judge this project on it's merits within the peer review guidelines rather than having a 100% functioning project. Hopefully I can complete it after the fact. 

### User Stories:

**An administrator opens the web app.** The web app reads the address and identifies that the user is an admin, showing them admin only functions, such as managing store owners. An admin adds an address to the list of approved store owners, so if the owner of that address logs into the app, they have access to the store owner functions.
 
**An approved store owner logs into the app.** The web app recognizes their address and identifies them as a store owner. They are shown the store owner functions. They can create a new storefront that will be displayed on the marketplace. They can also see the storefronts that they have already created. They can click on a storefront to manage it. They can add/remove products to the storefront or change any of the products’ prices. They can also withdraw any funds that the store has collected from sales.
 
**A shopper logs into the app.** The web app does not recognize their address so they are shown the generic shopper application. From the main page they can browse all of the storefronts that have been created in the marketplace. Clicking on a storefront will take them to a product page. They can see a list of products offered by the store, including their price and quantity. Shoppers can purchase a product, which will debit their account and send it to the store. The quantity of the item in the store’s inventory will be reduced by the appropriate amount.
 
### Stretch Goals:
-   uport login
-   IPFS UI Storage
-   ENS Domain
-   Testnet Deployment

## What does project do?

There are a list of stores on a central marketplace where shoppers can purchase goods posted by the store owners.
 
The central marketplace is managed by a group of administrators. Admins allow store owners to add stores to the marketplace. Store owners can manage their store’s inventory and funds. Shoppers can visit stores and purchase goods that are in stock using cryptocurrency. 

## How to Evaluate The Project

1. Clone the repository to your computer
2. Open the project folder via terminal (macOS) 
3. Go to project directory and run `npm install`
4. Enter the `truffle develop` command
5. Enter the `test` command. You should see 5 passing tests.
6. Leave truffle develop running from previous stage.
7. Copy the location truffle develop is running at from the success message:
e.g. Truffle Develop started at http://127.0.0.1:9545/
8. Open your browser with MetaMask installed and selection custom RPC network
9. Paste the Truffle Develop URI into the Custom RPC settings
10. Open a new terminal window in the project folder
11. Run `npm run dev` to start the development server on localhost
12. Go to `http://localhost:3000` in your browser with MetaMask installed making sure you are on the develop network.
13. You should be welcomed with your metamask address.
14. Note: If you want to test signing with Metamask - import the mnemonic from the Truffle Develop window and click the big button saying "Sign with MetaMask to Show Support for Project". 

*Note: Unfortunately due to the deadline there is not currently a deeper integration between the marketplace and the smart conracts even though they are on their way to becoming a functional marketplace*

## Testing Methodology

The Marketplace.sol contract features a series of 5 tests throughout the build process to ensure that the smart contract is functioning as expected and runs without bugs. 

### Tests Included

1. **Create New Store:** This has been designed to confirm that stores are created as expected. It runs checks to confirm that only the store owner creates stores when calling the `newStore` function and that other contract members such as the owner aren't classified as store owners by default.
2. **Add Store Admin:** One of the intended functions of this contract is to allow a store owner to add additional admins to their store who can manage products and inevntory levels but not withdraw. This test is designed to chec that the only the owner can manage store admins and that the correct admin address is added when the `addAdmin` function is called.
3. **Remove Store Admin:** This test is designed to check that admins are successfully removed when the `removeAdmin` function is called. This functionality can help to protect against comprimised store admin keys. 
4. **Add Product:** This test is designed to ensure that store owners can successfully add products to their store and that the correct details are carried through to the product listins.
5. **Remove Product:** This test is designed to ensure that products are succesfully removed when the `removeProduct` function is called by a store owner or admin. 

## Other Notes

- Conforms to [Solidity Comments Style Guide](https://solidity.readthedocs.io/en/v0.4.21/layout-of-source-files.html#comments)
- Inherits the SafeMath library from OpenZeppelin
- In its current state you can load the UI on a development server and interact with the app
- Shows your logged in ethereum address
- You can sign transactions with MetaMask
- The smart contract is able to run at least 5 passing tests through truffle although some of these require further development
- Uses a circuit breaker for pausing smart contract functionality
- The Project includes `design_pattern_desicions.md`, and `avoiding_common_attacks.md` files
- Does not include uPort functionality, an upgradable design pattern, Vyper, or LLL contracts
- Does not include an ENS domain even though I have tested ENS and personally own danielmcclure.eth and have mapped [danielmcclure.xyz to an ethereum address with DNSSEC](https://dnssec.ens.domains/)

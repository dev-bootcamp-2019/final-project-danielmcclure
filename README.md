# Final Project: Simple Online Marketplace

## WARNING: 
**This is development software as part of a training course and is not designed to be used in production code.**

Project Under Active Development until [Sunday 27th 23:59 AoE Time](https://www.worldtimeserver.com/time-zones/aoe/).

## Project Description

**Goal**: Create an online marketplace that operates on the ethereum blockchain.
 
 
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

## How to set it up

1. Clone the repository to your computer
2. Open the project folder via terminal (macOS)
3. Run development server as detailed below and then test

### Run a local development server

To start a local development server run the following command:

`npm run dev`

Then go to `http://localhost:3000` in your  browser.

## Testing Methodology

The Marketplace.sol contract implements a series of tests throughout the build process to ensure that the smart contract is functioning as expected and runs without bugs. 

### Tests Included

1. **Create New Store:** This has been designed to confirm that stores are created as expected. It runs checks to confirm that only the store owner creates stores when calling the `newStore` function and that other contract members such as the owner aren't classified as store owners by default.
2. **Add Store Admin:** One of the intended functions of this contract is to allow a store owner to add additional admins to their store who can manage products and inevntory levels but not withdraw. This test is designed to chec that the only the owner can manage store admins and that the correct admin address is added when the `addAdmin` function is called.
3. **Remove Store Admin:** This test is designed to check that admins are successfully removed when the `removeAdmin` function is called. This functionality can help to protect against comprimised store admin keys. 
4. **Add Product:** This test is designed to ensure that store owners can successfully add products to their store and that the correct details are carried through to the product listins.
5. **Remove Product:** This test is designed to ensure that products are succesfully removed when the `removeProduct` function is called by a store owner or admin. 

## Other Notes

- Conforms to [Solidity Comments Style Guide](https://solidity.readthedocs.io/en/v0.4.21/layout-of-source-files.html#comments)
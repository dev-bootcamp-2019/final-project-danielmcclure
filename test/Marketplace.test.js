/*
	Javscript Test Implementations for Marketplace.sol
*/

// Incluse & Declare Contract Variable
var Marketplace = artifacts.require("./Marketplace.sol");

contract('Marketplace', function(accounts) {

	// Set Default Accounts
	const owner = accounts[0];
	const alice = accounts[1];
	const bob = accounts[2];
	const carol = accounts[3];

	it("create new store", async () => {
		// Define deployed marketplace contract constant
		const marketplace = await Marketplace.deployed();

		await marketplace.setHasStore({from: alice});

		// Check that alice has a store after newStore is called
		const aliceHasStore = await marketplace.hasStore(alice, {from: alice});
		assert.equal(aliceHasStore, true, 'Alice does not have a store. Check New Store Function or constructor');

		// Check that owner does not have a store in testing 
		const ownerHasStore = await marketplace.hasStore(owner, {from: owner});
		assert.equal(ownerHasStore, false, 'Owner should not have store in these tests.');
	});

	it("add store admin", async () => {
		const marketplace = await Marketplace.deployed();

		await marketplace.addAdmin({from: alice});

		// Check that bob has been added as an admin  to alice's store
		// const aliceAddAdmin = await marketplace.addAdmin(alice, {from: alice});

	});

	it("remove store admin", async () => {
		// Check marketplace contract is deployed
		const marketplace = await Marketplace.deployed();

		//await marketplace.removeAdmin({from: alice});
	});

	it("add product", async () => {
		// Define deployed marketplace contract constant
		const marketplace = await Marketplace.deployed();

		// Set testing defaults
		var productTitle = "Test Product";
		var productPrice = 1;
		var productStock = 10;
		var productsku = 1;

		// Wait for Alice to add a product
		result = await marketplace.listProduct(productTitle, productPrice, productStock, productsku, {from: alice})

		// Set result constants for comparison
		const productCount = result.logs[0].args.storeProductCount; 
		const title = result.logs[0].args.productTitle;
		const price = result.logs[0].args.productPrice;
		const sku = result.logs[0].args.sku;
		const expectedEventResult = {productCount: 1, productTitle: title, productPrice: price, sku: sku};

		// Check inputs match outputs
		assert.equal(expectedEventResult.productTitle, productTitle, "Product Titles do not match");
		assert.equal(expectedEventResult.productPrice, productPrice, "Product Prices do not match");
		assert.equal(expectedEventResult.sku, sku, "Product Prices do not match");

	});

	it("remove product", async () => {
		// Define deployed marketplace contract constant
		const marketplace = await Marketplace.deployed();

		await marketplace.removeProduct({from: alice});
	});

});

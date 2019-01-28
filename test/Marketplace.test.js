/*
	Javscript Test Implementations for Marketplace.sol
*/

// Incluse & Declare Contract Variable
var Marketplace = artifacts.require("./Marketplace.sol");

contract('Marketplace', function(accounts) {

	// Set Default Accounts
	const owner = accounts[0]
	const alice = accounts[1];
	const bob = accounts[2];
	const carol = accounts[3];

	it("create new store", async () => {
		const marketplace = Marketplace.deployed();

		await marketplace.newStore({from: alice});

		// Check that alice has a store after newStore is called
		const aliceHasStore = await marketplace.hasStore(alice, {from: alice});
		assert.equal(aliceEnrolled, true, 'Alice does not have a store. Check New Store Function or constructor');

		// Check that owner does not have a store in testing 
		const ownerHasStore = await marketplace.hasStore(owner, {from: owner});
		assert.equal(ownerHasStore, false, 'Owner should not have store in these tests.');
	});

	it("add store admin", async () => {

	});

	it("remove store admin", async () => {

	});

	it("add product", async () => {

	});

	it("remove product", async () => {

	});

});

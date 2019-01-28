pragma solidity ^0.5.0;

/** @title Marketplace */
contract Marketplace {

	// Declare Cotract Owner
	address public owner;

	/*
		Add event logs for all store functions
		TODO: Add Tests
	*/

	// Event for store creation - logs address, ID, and Active State
	event LogNewStore(
		address ownerAddress,
		string storeId,
		bool isActive
	);

	// Event for store creation
	event LogAddAdmin(
		address accountAddress
	);

	event LogRemoveAdmin(
		address accountAddress
	);

	// Event for new products
	event LogListProduct(
		
	);

	event LogRemoveProduct(
		
	);

	event LogUpdateStock(
		
	);

	event LogStoreWithdraw(
		
	);

	event LogStorePurchase(
		
	);

	/*
		Create structs for marketplace
	*/

	// Create Store struct containing relevant variables
	struct Store {
		address payable storeOwner;
		string storeId;
		uint storeBalance;
		uint storeProductCount;
		mapping (uint => Product) storeProducts;
	}

	// Map Store structs to stores 
	mapping(uint => Store) public stores;

	// Create Product struct containing relevant variables
	struct Product {
		string productTitle;
		string productPrice;
		uint productStock;
		uint sku;
	}

	/*
		Add store funtions
	*/

	/** Function create new store */
	function newStore() public {
	}

	/** Function to create admin for store */
	function addAdmin() public {
	}

	/** Function to remove admin for store */
	function removeAdmin() public {
	}

	/** Function to add product to store */
	function listProduct() public {
	}

	/** Function to remove product from store */
	function removeProduct() public {
	}

	/** Function to update product stock levels */
	function updateStock() public {
	}

	/** Function to withdraw balance from store contract */
	function storeWithdraw() public {
	}

	/** Function to purchase product */
	function storePurchase() public {
	}

}
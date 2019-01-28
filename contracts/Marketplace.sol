pragma solidity ^0.5.0;

// Import SafeMath library for more secure mathematic functions
import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

/** @title Marketplace */
contract Marketplace {

	// Declare Cotract Owner
	address public owner;

	// Set Default Circuit Breaker Status
	bool private stopped = false;

	// Modifier to only allow calls from Contract Owner
	modifier isAdmin() {
		require(msg.sender == owner);
		_;
	}

	// Allows contract owner to pause contract
	function toggleContractActive() isAdmin public {
		stopped = !stopped;
	}
	// Future Task: Add decentralised circuit breaker mechanism e.g. by user vote

	/*
	 Modifier to pause certain functionality in case of emergy 

	 Currently used in following functions: 
	 newStore,
	 addAdmin,
	 removeAdmin,
	 listProduct,
	 updateStock,
	 removeProduct,
	 storePurchase,
	 storeWithdraw
	*/
	modifier stopInEmergency { if (!stopped) _; }

	/*
		Add event logs for all store functions
		TODO: Add Tests
	*/

	// Event for store creation - logs address, ID, and Active State
	event LogNewStore(
		address ownerAddress,
		string storeId,
		uint storeCount,
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

	// Keep count of how many stores exist
	uint storeCount = 0;

	// Create Product struct containing relevant variables
	struct Product {
		string productTitle;
		string productPrice;
		uint productStock;
		uint sku;
	}

	// Create User Role enum for use in user struct
	enum Role {
		User,
		Admin
	}

	struct User {
		Role role;
	}

	/*
		Create modifiers for marketplace functions
	*/

	// Verify store owners for store admin functions
	modifier verifyStoreOwner (address _address) {require (msg.sender == _address); _;}

	/*
		Add store funtions
	*/

	/** Function create new store */
	function newStore(string memory _storeId) stopInEmergency public returns (bool)
	{
		emit LogNewStore(msg.sender, _storeId, storeCount, true );
		stores[storeCount] = Store({storeOwner: msg.sender, storeId: _storeId, storeBalance: 0, storeProductCount: 0});
		//stores[storeCount].storeAdmins[0] = msg.sender;
		storeCount = storeCount + 1;
		return true;
	}

	/*  Function to create admin for store */
	function addAdmin(address _storeAdmin)
	 // Verify if store owner
	 verifyStoreOwner(stores[storeCount].storeOwner)
	 public {

	}

	/** Function to remove admin for store */
	function removeAdmin() stopInEmergency public {
	}

	/** Function to add product to store */
	function listProduct() stopInEmergency public {
	}

	/** Function to remove product from store */
	function removeProduct() stopInEmergency public {
	}

	/** Function to update product stock levels */
	function updateStock() stopInEmergency public {
	}

	/** Function to withdraw balance from store contract */
	function storeWithdraw() stopInEmergency public {
	}

	/** Function to purchase product */
	function storePurchase() stopInEmergency public {
	}

}
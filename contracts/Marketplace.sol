pragma solidity ^0.5.0;

contract Marketplace {

	// Declare Cotract Owner
	address public owner;

	/*
	// Admin Events
	*/

	// Event for store creation - logs address, ID, and Active State
	event LogNewStore(
		address accountAddress,
		string storeId,
		bool isActive
	);

	// Event for new products
	event listProduct(
		
	);

	event removeProduct(
		
	);

	event updateInventory(
		
	);

	event storeWithdraw(
		
	);

	event addOwner(
		
	);

	event removeOwner(
		
	);

	/*
	// Consumer Events
	*/

	event storePurchase(
		
	);

}
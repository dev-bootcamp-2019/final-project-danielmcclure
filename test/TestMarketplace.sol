pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Marketplace.sol";

contract TestMarketplace {

	// The address of the Marketplace contract to be tested
	Marketplace marketplace = Marketplace(DeployedAddresses.Marketplace());

	// Main tests implemented in javascript `Marketplace.test.js

}
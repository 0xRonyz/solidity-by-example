pragma solidity ^0.8.13;


contract Payable {

    // Payable address can receive ether


    address payable public owner;

    // Payable constructor can receive Ether

    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit ether into this contract

    // Call this function with some ether and contracts balance will update

    function deposit() public payable {}

    // Can't send ether, will throw error

    function notPayable() public {}


    // Function to withdraw all ether from this contract.

    function withdraw() public {
        // Get the amount of ether stored in this contract

        uint amount = address(this).balance;

        // Send all ether to owner. Owner can receive ether since the address of owner is payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Faled to send Ether");
    }

    // Function to transfer ether from this contract to address from input

    function transfer(address payable _to, uint _amount) public {
        // _to Is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send ether");
    }






}
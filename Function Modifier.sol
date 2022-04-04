pragma ^0.8.13;



contract FunctionModifier {

    address public owner;
    uint public x = 10;
    bool public locked;
    
    constructor() {
        // Set Transaction sender as the owner of the contract 
        owner - msg.sender;
    }


    // Modified to check if the caller is the owner of the contract

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        // Underscore is a special char used only inside function modified and it tells Solidity to execute the rest of the code
        _;
    }

    modifier validAddress(address _address) {
        require(_address != address(0), "Not valid address");
        _;    
    }


    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    // Modifiers can be called before and after the function

    // This modifier prevents a function from being called while it is still executing.

    modifier noReentrancy() {

        require(!locked, "No Reentrancy");

        locked = true;
        _;
        locked = false;
    } 

    function decrement(uint i) public noReentrancy {
        x -= i;
        if (i > 1) {decrement(i - 1);}
    }
























} 
/* Variables 

There are 3 types of variables 

Local
    => Declared inside a function
    => Not stored on the blockchain
    => To write/update Local Variable, does not require a transaction 
State
    => Declared outside of a function
    => Stored on the blockchain
    => To write/update State variable, a transaction is required
Global
    => Provides various information on the blockchain like address, gas, tokens, etc

You also have:

Constant Variables 
    => Cannot be modified as value is hardcoded [Note it saves gas]

Immutable Variables 
    => Like constants, but the value of immutable variable can be set inside the constructor and cannot be modified after

*/



pragma solidity ^0.8.13;


contract Variables {
    
    // Constant Variables 
    address public constant MY_ADDRESS = 0x08bfDE0D45aC7d5479a5bcfDcBaC6F7086750da2;
    uint public constant MY_UINT = 10;

    // Immutable Variables

    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    // e.g Can only be set once using constructor below

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }




    // State variables that are stored in the blockchain

    string public text = "0xRonyz was here" 
    uint public num = 123;

    function doSomething() public {
        // Local Variables are not saved to the blockchain 

        // Must have declared data type

        uint i = 256;

        
        /* 
        Block and Transaction Properties
        */

        blockhash(uint blockNumber) returns (bytes32); // hash of the given block when blocknumber is one of the 256 most recent blocks; otherwise returns zero

        block.basefee (uint); // Current block's base fee (EIP-3198 and EIP-1559)
        block.chainid (uint); // Current Chain ID
        block.coinbase (address payable); // Current block miner's address
        block.difficulty (uint): // Current block difficulty
        block.gaslimit (uint); // Current block gaslimit
        block.number (uint); // Current block number
        block.timestamp (uint); // Current block timestamp as seconds since unix epoch

        gasleft() returns (uint256); // Remaining gas

        msg.data (bytes calldata); // Complete calldata
        msg.sender (address); // Sender of the message (current call)
        msg.sig (bytes4); // First four bytes of the calldata (i.e. function identifier)
        msg.value (uint); // Number of wei sent with the message

        tx.gasprice (uint); // Gas price of the transaction
        tx.origin (address); // Sender of the transaction (full call chain)

        // ABI Encoding and Decoding Functions

        abi.decode(bytes memory encodedData, (...)) returns (...); // ABI-decodes the given data, while the types are given in parentheses as second argument. 
        (uint a, uint[2] memory b, bytes memory c) = abi.decode(data, (uint, uint[2], bytes)) // Example 

        abi.encode(...) returns (bytes memory); // ABI-encodes the given arguments
        abi.encodePacked(...) returns (bytes memory); // Performs packed encoding of the given arguments. Note that packed encoding can be ambiguous!
        abi.encodeWithSelector(bytes4 selector, ...) returns (bytes memory); // ABI-encodes the given arguments starting from the second and prepends the given four-byte selector
        abi.encodeWithSignature(string memory signature, ...) returns (bytes memory); // Equivalent to abi.encodeWithSelector(bytes4(keccak256(bytes(signature))), ...)
        abi.encodeCall(function functionPointer, (...)) returns (bytes memory); // ABI-encodes a call to functionPointer with the arguments found in the tuple. Performs a full type-check, ensuring the types match the function signature. Result equals abi.encodeWithSelector(functionPointer.selector, (...))

        // Members of bytes
        bytes.concat(...) returns (bytes memory); // Concatenates variable number of bytes and bytes1, …, bytes32 arguments to one byte array

        // Members of string
        string.concat(...) returns (string memory); // Concatenates variable number of string arguments to one string array

        // Error Handling

        assert(bool condition); // Causes a Panic error and thus state change reversion if the condition is not met - to be used for internal errors.

        require(bool condition); // Reverts if the condition is not met - to be used for errors in inputs or external components.
        require(bool condition, string memory message); // Reverts if the condition is not met - to be used for errors in inputs or external components. Also provides an error message.
        revert(); // Abort execution and revert state changes
        revert(string memory reason); // Abort execution and revert state changes, providing an explanatory string

        /// Mathematical and Cryptographic Functions

        addmod(uint x, uint y, uint k) returns (uint)
        // compute (x + y) % k where the addition is performed with arbitrary precision and does not wrap around at 2**256. Assert that k != 0 starting from version 0.5.0.

        mulmod(uint x, uint y, uint k) returns (uint)
        // compute (x * y) % k where the multiplication is performed with arbitrary precision and does not wrap around at 2**256. Assert that k != 0 starting from version 0.5.0.

        keccak256(bytes memory) returns (bytes32)
        // compute the Keccak-256 hash of the input

        sha256(bytes memory) returns (bytes32)
        // compute the SHA-256 hash of the input

        ripemd160(bytes memory) returns (bytes20)
        // compute RIPEMD-160 hash of the input

        ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address)
        /* Recover the address associated with the public key from elliptic curve signature or return zero on error. The function parameters correspond to ECDSA values of the signature:

        r = first 32 bytes of signature
        s = second 32 bytes of signature
        v = final 1 byte of signature
        
        ecrecover returns an address, and not an address payable. See address payable for conversion, in case you need to transfer funds to the recovered address.
        */



        // Members of Address Types

        <address>.balance (uint256) // balance of the Address in Wei

        <address>.code (bytes memory) // Code at the Address (can be empty)
        <address>.codehash (bytes32) // The codehash of the Address
        
        <address payable>.transfer(uint256 amount) // Send given amount of Wei to Address, reverts on failure, forwards 2300 gas stipend, not adjustable
        <address payable>.send(uint256 amount) returns (bool) // Send given amount of Wei to Address, returns false on failure, forwards 2300 gas stipend, not adjustable
        
        <address>.call(bytes memory) returns (bool, bytes memory) // Issue low-level CALL with the given payload, returns success condition and return data, forwards all available gas, adjustable
        <address>.delegatecall(bytes memory) returns (bool, bytes memory) // Issue low-level DELEGATECALL with the given payload, returns success condition and return data, forwards all available gas, adjustable
        <address>.staticcall(bytes memory) returns (bool, bytes memory) // Issue low-level STATICCALL with the given payload, returns success condition and return data, forwards all available gas, adjustable


    }


}
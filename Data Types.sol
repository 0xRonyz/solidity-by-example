// Data Types withn Solidity

pragma solidity ^0.8.13;

contract DataTypes {

    /* 
    boolean
    uint
    int
    address
    */

    bool public boolean = true; 

    /* uint is unsiged integer of different size

    uint8   ranges from 0 to 2 ** 8 - 1
    uint16  ranges from 0 to 2 ** 16 - 1
    ...
    uint256 ranges from 0 to 2 ** 256 - 1
    */

    uint  public u256 = 456;
    uint8 public u8 = 1;
    uint public u = 123 // Alias uint = uint256 
    
    /* Negative numbers can be represented by int
    Similarly to uint

    */

    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // Alias int = int256

    /*
    You can get min or max of an int
    */

    int public minInt = type(int).min;
    int public maxInt = type(int).max;


    /*
    Address
    */

    address public addr = 0x08bfDE0D45aC7d5479a5bcfDcBaC6F7086750da2;

    /*
    Data type byte represents a sequence of bytes
    
    In Solidity there are two byte types

    1. fixed sized byte arrays 

    byteX where X represents a sequence of bytes and X can be from 1-32
    byte is alias for byte1


    2. dynamically sized byte arrays

        
    bytes represents a dynamic array of bytes and has shorthand of byte[]
    bytes is treated as an array so can have lenght of 0
    bytes is not a value type
    You can push, pop and lenght

    */

    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; // [01010110]

    // Default values
    // Unassigned variables have default values

    bool public defaultBoolean; // false
    uint public defaultUint; // 0 
    int public defaultInt; // 0 
    address public defaultAddr; // 0x0000000000000000000000000000000000000000 <<< Null address 

}

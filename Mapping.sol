pragma solidity ^0.8.13;

contract Mapping {

    mapping(address => uint) public myMap;

    function get(address _address) public view returns (uint) {
        // Mapping will always return a value, and if it was never set, it will return default one.
        return myMap(_address);
    }

    funtion set(address _address, uint _i) public {
        // Upated the value of the address
        myMap[_address] = _i;
    }

    function remove(address _address) public {
        // Removes the default value
        delete myMap[_address];
    }

contract NestedMapping {
    // You can have nested mappings from one mapping, to another.

    mapping(address => mapping(uint => bool)) public nested;

    function get(address _address1, uint _i) public view returns (bool) {
        // You can get values from nested mappings even when it is not initialized
        return nested[_address1][_i];
        }


    function set(
        address _address1,
        uint _i,
        bool _boolean,
    ) public {
        nested[_address1][_i] = _boolean;
        }

    function remove(address _address1, uint _i) public {
        delete nested[_address1][_i];
        }
    }
}
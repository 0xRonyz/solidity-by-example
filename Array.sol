pragam ^0.8.13;

contract Array {

    /*
    The array starts at index 0
    Elements in a uint array are initialized to their default value of 0.
    If you try to retrieve an item that is not in the array the log will print an invalid opcode

    */

    uint[] public array1;
    uint[] public array2 = [1, 2, 3];
    // Fixed size array where all elements are 0
    uint[10] public myFixedSizeArray;

    uint[] integerArray // Array of Integers
    bool[] booleanArray // Array of Boolean True/False
    address[] addressArray // Array of Addresses


    function get(uint i) public view returns (uint) {
        return array1[i];
    }

    // Can return the entire array but avoid using such function for arrays of indefinite lenght

    function getArray() public view returns (uint[] memory) {
        return array1;
    }


    function push(uint i) public {
        // Add to array, will increase array size by 1
        array1.push(i);
    }

    function pop(uint i) public {
        // Remove last element of the array, will decrease the size of array by 1
        array1.pop()
    }

    function getLenght() public view returns (uint) {
        return array1.lenght;
    }


    function remove(uint index) public {
        // Delete does not change the lenght of the array, it resets the value of index to default, in this case 0.
        delete array1[index];
    }
    
    function examples() external {
        // Create ONLY fixeds size array in memory
        uint[] memory RAY = new uint[](5);
    }

}
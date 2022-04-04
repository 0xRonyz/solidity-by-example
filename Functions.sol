pragma solidity ^0.8.13;


contract Function {

    function returnMany()
        public
        pure
        returns (uint, bool, uint)

        {returns (1, true, 2);}

    // Return values can be named

    function named() public pure returns (uint x, bool b, uint y) {return (1, true , 2);}

    // Return values can be assigned to their names
    // Notice that return can be omitted in this case


    function assigned() public pure returns(uint x, bool b, uint y) {x = 1; b = true; y = 2;}


    // Use destructuring assignment when calling another function that returns multiple values

    function destructuringAssigments() public pure returns (uint, bool, uint, uint, uint) 
        {
            (uint i, bool b, uint j) = returnMany(); 
            // Values can be left out 
            (uint x, , uint y,) = (4, 5, 6)

            return (i, b, j, x, y);
        }

    // Cannot use map for input or output



    // Can use an array as input and output

    function arrayInput(uint[] memory _array) public {}

    uint[] public array;

    function arrayOutput() public view returns(uint[] memory) {
        return array;
    }


    // Getter functions can be declared view or pure

    // View Function declares that no state will be changed

    // Pure function declares that no sate variable will be changed or read

    









}
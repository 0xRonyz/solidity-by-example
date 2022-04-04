pragma ^0.8.13;

/* 
An error will undo all changes made to the state during a transaction
You can throw an error by calling require, revert or assert

    Require is used to validate inputs and conditions before execution

    Revert is similar to require

    Assert is used to check for code that should never be false. Failing assertion means that there is a bug. 
*/

contract Error {

    function testRequire(uint _i) public pure {
        /*
        Require should be used to validate conditions:
        Inputs
        Conditions before execution
        Return Values from calls to other functions
        */

        require(_i > 10, "Input Must be greater than 10");
    }




    function testRevert(uint _i) public pure {
        // Revert is useful for complex condition checks
        // Same as above

        if (_i <= 10) {revert("Input must be greater than 10")};
    }


    uint public number;

    function testAssert() public view {
        // Assert should only be used to test for internal errors and to check invariants
        // Here we assert that number is always equal to 0 since its impossible to update the value of number

        assert(number == 0);
        
    }

    // Custom Error


    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount})
        
        }
    }



}
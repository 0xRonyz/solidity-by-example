pragma solidity ^0.8.13;



contract Base {
    // Private function can only be called inside contracts. 
    // Contracts that inherit this contract CANNOT call this function.

    function privateFunction() private pure returns (string memory) {
        return "private function called";
    }

function testPrivateFunction() public pure returns (string memory) {
    return privateFunction();
}

// Internal function can be called Inside contract and inside contracts that inherit this contract.

function internalFunction() internal pure returns (string memory) {
    return "internal function called";
}

function testInternalFunction() public pure virtual returns (string memory) {
    return internalFunction();
}

// Public functions can be called inside this contract, inside contracts that inherit this contract, by other contracts and accounts.

function publicFunction() public pure returns (string memory) {
    return "public function called";
}


// External functions cam only be called by other contracts and accounts

function externalFunction() external pure returns (string memory) {
    return "external function called";
}



    // This function will not compile since we're trying to call
    // an external function here.
    // function testExternalFunc() public pure returns (string memory) {
    //     return externalFunc();
    // }

    // State variables
    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
    // State variables cannot be external so this code won't compile.
    // string external externalVar = "my external variable";
}

contract Child is Base {
    // Inherited contracts do not have access to private functions
    // and state variables.
    // function testPrivateFunc() public pure returns (string memory) {
    //     return privateFunc();
    // }

    // Internal function call be called inside child contracts.
    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
}












} 
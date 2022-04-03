pragma ^0.8.13;

contract StatementsAndLoops {
    

    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        }
        else if (x < 20) {
            return 1;
        }
        else { 
            return 2;
        }
        
    }

    function ternary(uint _x) public pure returns (uint) {
        
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        return _x < 10 ? 1 : 2; 
    }

    /*
    Solidity has for, while and do while loops

    DO NOT USE UNBOUNDED LOOPS as they can hit the gas limit and the transaction will fail

    */

    function loop() public {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Continue with the loop
                continue;
            }
            if (i == 5) {
                // Stop the loop
                break;
            }
        }
    }

    // While loop

    uint R;
    while (R < 10) {
        R++
    }




}



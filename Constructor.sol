pragma solidity ^0.8.13;


contract A {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}
contract B {
    string public text;
    constructor(string memory _text) {
        text = _text;
    }
}



// There are 2 ways to initialize the parent contract with parameters 

// Pass the parameter in the inheritance list

contract Y is A("Input to A"), B("Input to B") {

}

contract G is A, B {
    // Pass the parameters here in the constructor similar to function modifier.

    constructor(string memory _name, string memory _text) A(_name) B(_text) {

    }
}
// Parent constructors are always called in the order of inherence, regardless of the order of parent contract listed in the constructor of the child contract. 

/*
1. A
2. B
3. C
*/

contract C is A, B {
    constructor() A("A was called") B("B was called") {
    }

}

/*
1. A
2. B
3. C
*/

contract D is A, B {
    constructor() A("A was called") B("B was called") {
    }
}


































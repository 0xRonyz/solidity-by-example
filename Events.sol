pragma ^0.8.13;



contract Event {

    // Up to 3 parameters can be indexed. Indexed parameters helps filter the logs by the indexed parameter.

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello EVM");
        emit AnotherLog();
    }
}
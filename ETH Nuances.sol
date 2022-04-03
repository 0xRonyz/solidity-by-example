// Various nuances for ETH, Wei, Gas etc

pragma solidity ^0.8.13;

contract Nuances {

    assert(1 wei == 1);
    assert(1 gwei == 1e9);
    assert(1 ether == 1e18);

    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;

    // Time Units

    1 == 1 seconds
    1 minutes == 60 seconds
    1 hours == 60 minutes
    1 days == 24 hours
    1 weeks == 7 days

    /* Gas and Gas Limits

    You pay gas spent * gas price amount of ether, where
        => gas is a unit of computation
        => gas spent is the total amount of gas used in a transaction
        => gas price is how much ether you are willing to pay per gas

    Gas limit 
        => Max amount of gas you're willing to use for your transaction, set by you
    Block gas limit 
        => Max amount of gas allowed in a block, set by the network

    */

}
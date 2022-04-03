pragma solidity ^0.8.13;

contract Enum {

    // Enum that represents shipping status

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default Value is the first element

    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns (Status) {
        returns status;
   }


    // Update status by passing uint as input

    function set (Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // Delete resets enum to its first value, 0

    function reset() public {
        delete status;
    }


}
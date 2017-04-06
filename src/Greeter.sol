pragma solidity ^0.4.4;

contract Mortal {
    /* Define variable owner of the type address*/
    address owner;

    /* this function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

contract Greeter is Mortal {
    /* define variable greeting of the type string */
    bytes32 greeting;
    uint32 number = 0;

    function setGreeting(bytes32 _greeting) returns (bool) {
        greeting = _greeting;
        return true;
    }

    function getGreeting() constant returns (bytes32) {
        return greeting;
    }
}
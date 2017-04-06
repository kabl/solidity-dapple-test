pragma solidity ^0.4.4;

import 'dapple/test.sol';
import './Greeter.sol';

contract GreeterTest is Test {
    Greeter greeter;
    Tester proxy_tester;

    function setUp() {
        greeter = new Greeter();
        proxy_tester = new Tester();
        proxy_tester._target(greeter);
    }

    function testSetAndGetGreeting() {
        bool result = greeter.setGreeting("ok");
        //assertTrue(result);
        bytes32 actual = greeter.getGreeting();
        uint a = 1;
        assertEq32(bytes32("ok"), bytes32(actual));
    }
}
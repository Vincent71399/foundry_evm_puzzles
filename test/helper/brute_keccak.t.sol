// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {p19_keccak_finder} from "../../src/sol_helper/p19_keccak_finder.sol";

contract Brute_Keccak is Test {
    p19_keccak_finder internal finder;

    function setUp() public {
        finder = new p19_keccak_finder();
    }

    function test_keccak() public {
        finder.findMatchingInput(0, 10000);
        console.log("found : ", finder.found());
        console.logBytes32(finder.foundHash());
        console.logBytes(finder.foundInput());  // 0x2f = 47
    }
}
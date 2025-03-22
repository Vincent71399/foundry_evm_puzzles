// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Solution_Base} from "./Solution_Base.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract Solution_Huff is Solution_Base {
    string public constant PUZZLE_1_LOCATION = "huff_puzzles/puzzle_1";
    string public constant PUZZLE_2_LOCATION = "huff_puzzles/puzzle_2";
    string public constant PUZZLE_3_LOCATION = "huff_puzzles/puzzle_3";
    string public constant PUZZLE_4_LOCATION = "huff_puzzles/puzzle_4";
    string public constant PUZZLE_5_LOCATION = "huff_puzzles/puzzle_5";
    string public constant PUZZLE_6_LOCATION = "huff_puzzles/puzzle_6";
    string public constant PUZZLE_7_LOCATION = "huff_puzzles/puzzle_7";
    string public constant PUZZLE_8_LOCATION = "huff_puzzles/puzzle_8";
    string public constant PUZZLE_9_LOCATION = "huff_puzzles/puzzle_9";
    string public constant PUZZLE_10_LOCATION = "huff_puzzles/puzzle_10";
    string public constant PUZZLE_11_LOCATION = "huff_puzzles/puzzle_11";
    string public constant PUZZLE_12_LOCATION = "huff_puzzles/puzzle_12";
    string public constant PUZZLE_13_LOCATION = "huff_puzzles/puzzle_13";
    string public constant PUZZLE_14_LOCATION = "huff_puzzles/puzzle_14";
    string public constant PUZZLE_15_LOCATION = "huff_puzzles/puzzle_15";
    string public constant PUZZLE_16_LOCATION = "huff_puzzles/puzzle_16";
    string public constant PUZZLE_17_LOCATION = "huff_puzzles/puzzle_17";
    string public constant PUZZLE_18_LOCATION = "huff_puzzles/puzzle_18";
    string public constant PUZZLE_19_LOCATION = "huff_puzzles/puzzle_19";
    string public constant PUZZLE_20_LOCATION = "huff_puzzles/puzzle_20";

    function setUp() public override{
        puzzle_addresses[0] = HuffDeployer.config().deploy(PUZZLE_1_LOCATION);
        puzzle_addresses[1] = HuffDeployer.config().deploy(PUZZLE_2_LOCATION);
        puzzle_addresses[2] = HuffDeployer.config().deploy(PUZZLE_3_LOCATION);
        puzzle_addresses[3] = HuffDeployer.config().deploy(PUZZLE_4_LOCATION);
        puzzle_addresses[4] = HuffDeployer.config().deploy(PUZZLE_5_LOCATION);
        puzzle_addresses[5] = HuffDeployer.config().deploy(PUZZLE_6_LOCATION);
        puzzle_addresses[6] = HuffDeployer.config().deploy(PUZZLE_7_LOCATION);
        puzzle_addresses[7] = HuffDeployer.config().deploy(PUZZLE_8_LOCATION);
        puzzle_addresses[8] = HuffDeployer.config().deploy(PUZZLE_9_LOCATION);
        puzzle_addresses[9] = HuffDeployer.config().deploy(PUZZLE_10_LOCATION);
        puzzle_addresses[10] = HuffDeployer.config().deploy(PUZZLE_11_LOCATION);
        puzzle_addresses[11] = HuffDeployer.config().deploy(PUZZLE_12_LOCATION);
        puzzle_addresses[12] = HuffDeployer.config().deploy(PUZZLE_13_LOCATION);
        puzzle_addresses[13] = HuffDeployer.config().deploy(PUZZLE_14_LOCATION);
        puzzle_addresses[14] = HuffDeployer.config().deploy(PUZZLE_15_LOCATION);
        puzzle_addresses[15] = HuffDeployer.config().deploy(PUZZLE_16_LOCATION);
        puzzle_addresses[16] = HuffDeployer.config().deploy(PUZZLE_17_LOCATION);
        puzzle_addresses[17] = HuffDeployer.config().deploy(PUZZLE_18_LOCATION);
        puzzle_addresses[18] = HuffDeployer.config().deploy(PUZZLE_19_LOCATION);
        puzzle_addresses[19] = HuffDeployer.config().deploy(PUZZLE_20_LOCATION);
    }
}
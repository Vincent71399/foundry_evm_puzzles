// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Answers} from "./Answers.sol";

abstract contract Solution_Base is Test, Answers {
    bytes internal puzzle_1_code = hex"3456FDFDFDFDFDFD5B00";
    bytes internal puzzle_2_code = hex"34380356FDFD5B00FDFD";
    bytes internal puzzle_3_code = hex"3656FDFD5B00";
    bytes internal puzzle_4_code = hex"34381856FDFDFDFDFDFD5B00";
    bytes internal puzzle_5_code = hex"34800261010014600C57FDFD5B00FDFD";
    bytes internal puzzle_6_code = hex"60003556FDFDFDFDFDFD5B00";
    bytes internal puzzle_7_code = hex"36600080373660006000F03B600114601357FD5B00";
    bytes internal puzzle_8_code = hex"36600080373660006000F0600080808080945AF1600014601B57FD5B00";
    bytes internal puzzle_9_code = hex"36600310600957FDFD5B343602600814601457FD5B00";
    bytes internal puzzle_10_code = hex"38349011600857FD5B3661000390061534600A0157FDFDFDFD5B00";
    bytes internal puzzle_11_code = hex"36340A56FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE5B58360156FEFE5B00";
    bytes internal puzzle_12_code = hex"3660006000373660006000F0600080808080945AF13D600a14601F57FEFEFE5B00";
    bytes internal puzzle_13_code = hex"3660006000373660006000F06000808080935AF460055460aa14601e57fe5b00";
    bytes internal puzzle_14_code = hex"30313660006000373660003031F0319004600214601857FD5B00";
    bytes internal puzzle_15_code = hex"60203611600857FD5B366000600037365903600314601957FD5B00";
    bytes internal puzzle_16_code = hex"7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff03401600114602a57fd5b00";
    bytes internal puzzle_17_code = hex"5a345b60019003806000146011576002565b5a90910360a614601d57fd5b00";
    bytes internal puzzle_18_code = hex"341515600757fd5b3660006000373660006000f047600060006000600047865af1600114602857fd5b4714602f57fd5b00";
    bytes internal puzzle_19_code = hex"34600052602060002060F81C60A814601657FDFDFDFD5B00";
    bytes internal puzzle_20_code = hex"602060006000376000517ff0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f01660206020600037600051177fabababababababababababababababababababababababababababababababab14605d57fd5b00";

    bytes[] internal puzzle_codes = [
        puzzle_1_code,
        puzzle_2_code,
        puzzle_3_code,
        puzzle_4_code,
        puzzle_5_code,
        puzzle_6_code,
        puzzle_7_code,
        puzzle_8_code,
        puzzle_9_code,
        puzzle_10_code,
        puzzle_11_code,
        puzzle_12_code,
        puzzle_13_code,
        puzzle_14_code,
        puzzle_15_code,
        puzzle_16_code,
        puzzle_17_code,
        puzzle_18_code,
        puzzle_19_code,
        puzzle_20_code
    ];

    address[] internal puzzle_addresses = [
        makeAddr("puzzle_1"),
        makeAddr("puzzle_2"),
        makeAddr("puzzle_3"),
        makeAddr("puzzle_4"),
        makeAddr("puzzle_5"),
        makeAddr("puzzle_6"),
        makeAddr("puzzle_7"),
        makeAddr("puzzle_8"),
        makeAddr("puzzle_9"),
        makeAddr("puzzle_10"),
        makeAddr("puzzle_11"),
        makeAddr("puzzle_12"),
        makeAddr("puzzle_13"),
        makeAddr("puzzle_14"),
        makeAddr("puzzle_15"),
        makeAddr("puzzle_16"),
        makeAddr("puzzle_17"),
        makeAddr("puzzle_18"),
        makeAddr("puzzle_19"),
        makeAddr("puzzle_20")
    ];

    function setUp() public virtual {
        for(uint256 i = 0; i < puzzle_addresses.length; i++) {
            vm.etch(puzzle_addresses[i], puzzle_codes[i]);
        }
    }

    function _basePuzzleProof(uint256 index) private {
        (uint256 value, bytes memory data) = getAnswer(index);
        (bool success,) = puzzle_addresses[index].call{value: value}(data);
        assertTrue(success, "puzzle failed");
    }

    function testPuzzle1() public {
        _basePuzzleProof(0);
    }

    function testPuzzle2() public {
        _basePuzzleProof(1);
    }

    function testPuzzle3() public {
        _basePuzzleProof(2);
    }

    function testPuzzle4() public {
        _basePuzzleProof(3);
    }

    function testPuzzle5() public {
        _basePuzzleProof(4);
    }

    function testPuzzle6() public {
        _basePuzzleProof(5);
    }

    function testPuzzle7() public {
        _basePuzzleProof(6);
    }

    function testPuzzle8() public {
        _basePuzzleProof(7);
    }

    function testPuzzle9() public {
        _basePuzzleProof(8);
    }

    function testPuzzle10() public {
        _basePuzzleProof(9);
    }

    function testPuzzle11() public {
        _basePuzzleProof(10);
    }

    function testPuzzle12() public {
        _basePuzzleProof(11);
    }

    function testPuzzle13() public {
        _basePuzzleProof(12);
    }

    function testPuzzle14() public {
        _basePuzzleProof(13);
    }

    function testPuzzle15() public {
        _basePuzzleProof(14);
    }

    function testPuzzle16() public {
        _basePuzzleProof(15);
    }

    function testPuzzle17() public {
        _basePuzzleProof(16);
    }

    function testPuzzle18() public {
        _basePuzzleProof(17);
    }

    function testPuzzle19() public {
        _basePuzzleProof(18);
    }

    function testPuzzle20() public {
        _basePuzzleProof(19);
    }
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract Answers {
    struct Answer {
        uint256 value;
        bytes data;
    }

    Answer[] public answers;

    constructor() {
        // write answers here
        answers.push(Answer(8, ""));  // puzzle 1
        answers.push(Answer(4, ""));  // puzzle 2
        answers.push(Answer(0, hex"00000000"));  // puzzle 3
        answers.push(Answer(6, ""));  // puzzle 4
        answers.push(Answer(16, "")); // puzzle 5
        answers.push(Answer(0, hex"000000000000000000000000000000000000000000000000000000000000000a"));  // puzzle 6
        answers.push(Answer(0, hex"60018060093d393df300"));  // puzzle 7
        answers.push(Answer(0, hex"60028060093d393df3fd00"));  // puzzle 8
        answers.push(Answer(1, hex"0000000000000000"));  // puzzle 9
        answers.push(Answer(15, hex"000000"));  // puzzle 10
        answers.push(Answer(2, hex"000000000000"));  // puzzle 11
        answers.push(Answer(0, hex"60048060093d393df3600a5ff3"));  // puzzle 12
        answers.push(Answer(0, hex"60068060093d393df360aa60055500"));  // puzzle 13
        answers.push(Answer(10, hex"5f5f5f5f600234045f5af1470060018060163d393df300"));  // puzzle 14
        answers.push(Answer(0, hex"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"));  // puzzle 15
        answers.push(Answer(17, ""));  // puzzle 16g
        answers.push(Answer(4, ""));  // puzzle 17
        answers.push(Answer(20, hex"60028060093d393df333ff"));  // puzzle 18
        answers.push(Answer(47, ""));  // puzzle 19
        answers.push(Answer(0, hex"a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a00b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b"));  // puzzle 20
    }

    function getAnswer(uint256 index) public view returns (uint256 value, bytes memory data) {
        value = answers[index].value;
        data = answers[index].data;
    }
}

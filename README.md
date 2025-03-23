### My Solution to evm puzzles and more evm puzzles

evm puzzles: https://github.com/fvictorio/evm-puzzles

more evm puzzles: https://github.com/daltyboy11/more-evm-puzzles

Answers are in test/Answer.sol, for some puzzles, helper contract deploy bytecode are needed as callData, check huffc src/huff_helper/*

for generating deploy bytecode, check Makefile commands, (eg: p7_helper_deploy_code :; huffc src/huff_helper/p7_one_byte.huff -b), run make p7_helper_deploy_code

I edited puzzle 18 to prevent callvalue: 0, calldata: "" to bypass the puzzle

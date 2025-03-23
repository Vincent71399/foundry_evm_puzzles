### My Solution to evm puzzles and more evm puzzles

evm puzzles: https://github.com/fvictorio/evm-puzzles

more evm puzzles: https://github.com/daltyboy11/more-evm-puzzles

The answers can be found in `test/Answer.sol`. For some puzzles, you'll need to provide the deploy bytecode of helper contracts as callData. Refer to the Huff source files in `src/huff_helper/*`.

To generate the deploy bytecode, use the relevant Makefile commands. For example, to generate bytecode for Puzzle 7's helper, run: 

```make p7_helper_deploy_code```

This command runs:

```huffc src/huff_helper/p7_one_byte.huff -b```

Note: I’ve modified Puzzle 18 to prevent it from being bypassed by using `callvalue: 0` and empty `calldata`.





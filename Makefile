# huff install
install_huff :; curl -L get.huff.sh | bash

# foundry libs
install : install_foundry install_foundry_huff install_dos2unix convert_line_endings_unix
install_foundry :; forge install foundry-rs/forge-std --no-commit
install_foundry_huff :; forge install huff-language/foundry-huff --no-commit
# for WSL running foundry huff
install_dos2unix :; sudo apt-get install dos2unix
convert_line_endings_unix :; find lib/foundry-huff/scripts -type f -name "*.sh" -exec dos2unix {} +
# for WSL running foundry huff end

# run tests
test :; forge test
test_puzzle_1 :; forge test --mt testPuzzle1
test_puzzle_2 :; forge test --mt testPuzzle2
test_puzzle_3 :; forge test --mt testPuzzle3
test_puzzle_4 :; forge test --mt testPuzzle4
test_puzzle_5 :; forge test --mt testPuzzle5
test_puzzle_6 :; forge test --mt testPuzzle6
test_puzzle_7 :; forge test --mt testPuzzle7
test_puzzle_8 :; forge test --mt testPuzzle8
test_puzzle_9 :; forge test --mt testPuzzle9
test_puzzle_10 :; forge test --mt testPuzzle10

# get huff byte codes
puzzle_1_deploy_code :; huffc src/huff_puzzles/puzzle_1.huff -b
puzzle_1_runtime_code :; huffc src/huff_puzzles/puzzle_1.huff --bin-runtime

# get helper deploy code
p7_helper_deploy_code :; huffc src/huff_helper/p7_one_byte.huff -b
p8_helper_deploy_code :; huffc src/huff_helper/p8_always_revert.huff -b
p12_helper_deploy_code :; huffc src/huff_helper/p12_return_size.huff -b
p13_helper_deploy_code :; huffc src/huff_helper/p13_delegate_sstore.huff -b
p14_helper_deploy_code :; huffc src/huff_helper/p14_send_away_half.huff -b
p18_helper_deploy_code :; huffc src/huff_helper/p18_send_back.huff -b
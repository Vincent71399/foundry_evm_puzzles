// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract p19_keccak_finder {
    bytes32 public foundHash;
    bytes public foundInput;
    bool public found;

    function findMatchingInput(uint256 start, uint256 limit) public {
        require(!found, "Already found a matching input");

        for (uint256 i = start; i < start + limit; i++) {
            bytes memory input = abi.encodePacked(i);
            bytes32 hash = keccak256(input);

            if (uint8(hash[0]) == 0xa8) {
                foundHash = hash;
                foundInput = input;
                found = true;
                break;
            }
        }
    }

    function reset() public {
        found = false;
        foundHash = bytes32(0);
        foundInput = "";
    }
}

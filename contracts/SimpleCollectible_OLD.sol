// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

// import "/home/oem/.brownie/packages/OpenZeppelin/openzeppelin-contracts@3.4.0/contracts/token/ERC721";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleCollectible is ERC721 {
    uint256 tokenCounter;

    constructor() public ERC721("Dogie", "DOG") {
        tokenCounter = 0;
    }

    function createCollectible(
        string memory tokenURI
    ) public returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);

        /* Allows NFT to have a viewable image associated with it */
        _setTokenURI(newTokenId, tokenURI);

        tokenCounter = tokenCounter + 1;
        return newTokenId;
    }
}

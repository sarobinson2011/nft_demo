// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;
// pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleCollectible is ERC721 {
    uint256 public tokenCounter;

    constructor() public ERC721("DoggoPups", "DOGO") {
        tokenCounter = 0;
    }

    function createCollectible(
        string memory tokenURI
    ) public returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);

        /* Allows NFT to have a viewable image associated with it */
        _setTokenURI(newTokenId, tokenURI);

        // tokenCounter = tokenCounter + 1;
        tokenCounter += 1;
        return newTokenId;
    }
}

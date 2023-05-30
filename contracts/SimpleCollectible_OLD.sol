// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "";

contract SimpleCollectible is ERC721 {
    uint256 tokenCounter;

    constructor() ERC721("Dogie", "DOG") {
        tokenCounter = 0;
    }

    function createCollectible(
        string memory tokenURI
    ) public returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);

        /* Allows NFT to have a viewable image associated with it */
        _setTokenURI(newTokenId, tokenURI);
        // --> TODO line needs re-writing for ^0.8.0

        tokenCounter = tokenCounter + 1;
        return newTokenId;
    }
}

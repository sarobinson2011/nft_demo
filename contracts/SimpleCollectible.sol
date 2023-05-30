// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

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

// function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
//         _requireMinted(tokenId);

//         string memory baseURI = _baseURI();
//         return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
//     }

//     /**
//      * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
//      * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
//      * by default, can be overridden in child contracts.
//      */
//     function _baseURI() internal view virtual returns (string memory) {
//         return "";
//     }

// SPDX-Licence-Identifier: MIT
pragma solidity ^0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract AdvancedCollectible is ERC721, VRFConsumerBase {

    uint256 public tokenCounter;
    bytes32 public keyHash;
    uint256 public fee;
    enum Breed{JACK, DASH, LAB, ROTTY, BERNY};
    mapping(uint256 => Breed) tokenIdToBreed;
    
    constructor(address _vrfCoordinator, address _linkTOken, address _keyHash, uint256 _fee) public {
    VRFConsumerBase(_vrfCoordinator, _linkToken)
    ERC721("TheDoggos", "DOG") 
    {
        tokenCounter = 0;
        keyHash = _keyHash;
        fee = _fee;
    }
    
    function createCollectible(string memory tokenURI) public returns (bytes32) {
        bytes32 requestId = requestRandomness(keyhash, fee);

    }

    function fulfillRandomness(bytes32 requestId, uint256 randomNumber) internal override {
        Breed breed = Breed(randomNumber % 5); // mod by whatever the length of enum Breed is
        uint256 newTokenId = tokenCounter;
        tokenIdToBreed[newTokenId] = breed; 
        _safeMint('xxx', newTokenId); // can't use msg.sender since vrfCoordinator calls this function
        
    }

    }    
}

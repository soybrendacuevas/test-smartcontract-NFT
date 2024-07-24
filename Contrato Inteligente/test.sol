// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTContract is ERC721, Ownable {
    uint256 public tokenCounter;
    mapping(uint256 => uint256) public tokenRoyalties;
    mapping(uint256 => address) public tokenCreators;

    constructor() ERC721("MyNFT", "NFT") {
        tokenCounter = 0;
    }

    function createNFT(string memory tokenURI, uint256 royalty) public {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
        tokenRoyalties[newTokenId] = royalty;
        tokenCreators[newTokenId] = msg.sender;
        tokenCounter++;
    }

    function transferFrom(address from, address to, uint256 tokenId) public override {
        super.transferFrom(from, to, tokenId);
        uint256 royalty = tokenRoyalties[tokenId];
        address creator = tokenCreators[tokenId];
        payable(creator).transfer(royalty);
    }
}

//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Nft is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("Mythic Token", "MC"){}

    function mint() external {
        _safeMint(msg.sender,tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreiguh6bm7ada4kilgej347h6or4oau6a4b6akdaw4r65hucopwda74"
        );
    }
}


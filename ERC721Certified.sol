// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract ERC721Certified is ERC721, Ownable {

    string public certificate;

    constructor(string memory contractName, string memory contractSymbol, string memory cert)
        ERC721(contractName, contractSymbol)
    {
        certificate = cert;
    }

    function updateCert(string memory cert) public onlyOwner {
        certificate = cert;
    }
}

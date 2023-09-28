// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.0/token/ERC721/ERC721.sol";

contract ERC721Certified is ERC721 {

    string public certificate;	// String public variable for certificate

    constructor(string memory contractName, string memory contractSymbol, string memory cert)
        ERC721(contractName, contractSymbol)
    {
        certificate = cert;	// Assign certificate variable with your certificate ASCII code
    }
}

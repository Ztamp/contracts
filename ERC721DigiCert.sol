// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.3/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";

contract ERC721DigiCert is ERC721, Ownable {

    string public certificate;

    constructor() ERC721("MyToken", "MTK") {	// Change "MyToken" and "MTK" to your contract name and symbol
        certificate = "-----BEGIN CERTIFICATE-----\nMIIGHDCCBQSgAwIBAgIUb2b0ZIr4hrDpeH1oaryQFhAboiYwDQYJKoZIhvcNAQEL\nBQAwgdkxGjAYBgNVBAoMEUhvbWUgV29ya3MgUy5wLkEuMSAwHgYDVQQKDBdodHRw\nOi8vd3d3LmhvbWV3b3Jrcy5pdDEgMB4GA1UECwwXSG9tZVdvcmtzIElUIERlcGFy\ndG1lbnQxHTAbBgNVBAMMFEhvbWVXb3JrcyBJc3N1aW5nIENBMSMwIQYJKoZIhvcN";
    }
	
	function updateCert(string memory cert) public onlyOwner {
        certificate = cert;
    }
}

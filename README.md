## Introduction
The smart contracts included here are based on OpenZeppelin standards. We included the necessary code and functions to install a digital certificate on a contract.

## How to install a digital certificate on smart contract
There are generally two methods to include a certificate.

1. Compile your contract and include the certificate ASCII code before deployment on chain.
Use the source code `ERC721DigiCert.sol` and follow this [tutorial](https://ztamp.io/install-digital-certificate-on-smart-contract) 

2. Hardcode the certificate ASCII code in the constructor of your contract, then compile and deploy on chain. 
Use the source code `ERC721Certified.sol` and watch this video [tutorial](https://www.youtube.com/watch?v=rswZenr2_TM).

## How to update a digital certificate on a smart contract
You need to include the `updateCert` function as shown below to allow you to update your certificate in the future. 

`function updateCert(string memory cert) public onlyOwner {
   certificate = cert;
}`

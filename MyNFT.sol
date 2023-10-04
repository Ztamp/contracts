// This is a sample contract containing a sample digital certificate

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    
    string public certificate;  // String public variable for certificate

    constructor() ERC721("MyNFT", "MNFT") {

        // Assign certificate variable with your certificate ASCII code in one line 
        certificate = "-----BEGIN CERTIFICATE-----\nMIIFhzCCBG+gAwIBAgIIFNTFi4cf6ogwDQYJKoZIhvcNAQELBQAwfDEYMBYGA1UE\nCgwPWnRhbXAgUHRlLiBMdGQuMRkwFwYDVQQKDBBodHRwczovL3p0YW1wLmlvMRkw\nFwYDVQQDDBBadGFtcCBJc3N1aW5nIENBMR0wGwYJKoZIhvcNAQkBFg5oZWxsb0B6\ndGFtcC5pbzELMAkGA1UEBhMCU0cwHhcNMjMwOTIzMDEwMjQzWhcNMjQwOTIyMDEw\nMjQzWjCB3zEUMBIGA1UECgwLaVRva2VuIEluYy4xDzANBgNVBAMMBmlUb2tlbjEe\nMBwGCSqGSIb3DQEJARYPam9obkBpdG9rZW4uY29tMRQwEgYDVQQHDAtMb3MgQW5n\nZWxlczETMBEGA1UECAwKQ2FsaWZvcm5pYTELMAkGA1UEBhMCVVMxOjA4BgorBgEE\nAYPbTQMCDCoweEY4MkI0ZTU1ZDk2MWY3NUFBOUE3MzAwRjQ1MmU2ZkI2RURmMUU4\nODYxIjAgBgorBgEEAYPbTQMBDBJodHRwczovL2l0b2tlbi5jb20wggEiMA0GCSqG\nSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCryCDaVNyR5w29I1zHB+4FG1oV7Z7cOldw\nKHjdMVMWIBF4HRKfkp0j0fSaFJsAaQ3F/xQIduod1v092qcSUPwib0NgWb2L9zyR\niut45nY2Xu3vg8qq38pww60BzZszLsuKUrI61YAn3vQxwFFYuidYrKm3XYl5Shdm\nYepYAu+Q+nDxQyknbquMtbYK76X8D7gDWogCTjTSU+duopg0ffHQoQh2WJ5Nqdlv\nWfVl7kvczGzGiVHiQwx2jD+PrM6rL1AbIxsgXv0dU4UAQ6OLnHRUhWYo+9dYH2v3\nEI3QbUaBj1qtKGrphRVu6V4TMXbWLJjiJHiPTWZUT6c43NEQelDnAgMBAAGjggGn\nMIIBozAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIHgDAWBgNVHSUBAf8EDDAKBggr\nBgEFBQcDAzAdBgNVHQ4EFgQU5Eic7fmA4XdpblBp4tkQmjptn18wHwYDVR0jBBgw\nFoAUAK2tZoc0HL4ZoxcAEJi09hp1/F4wLwYIKwYBBQUHAQEEIzAhMB8GCCsGAQUF\nBzAChhNodHRwczovL3p0YW1wLmlvL2NhMDMGA1UdHwQsMCowKKAmoCSGImh0dHBz\nOi8venRhbXAuaW8vY2EvaXNzdWluZy1jYS5jcmwwgccGA1UdIASBvzCBvDBzBgor\nBgEEAYPbTQEBMGUwIwYIKwYBBQUHAgEWF2h0dHBzOi8venRhbXAuaW8vY2EvY3Bz\nMD4GCCsGAQUFBwICMDIaMFp0YW1wIFB0ZS4gTHRkLiBDZXJ0aWZpY2F0aW9uIFBy\nYWN0aWNlIFN0YXRlbWVudDBFBgorBgEEAYPbTQIBMDcwNQYIKwYBBQUHAgIwKRon\nWnRhbXAgU21hcnQgQ29udHJhY3QgQ2VydGlmaWNhdGUgUG9saWN5MA0GCSqGSIb3\nDQEBCwUAA4IBAQBPxrgMZAIsAfiysOuVTtGUmSJXTTxRj4+6kRfzBEmtHgCdH8mF\nHhDqTpVwQLe3Bqli4V+qRcQyXOpnY+QnPeYh3gJzVpHinn+DyBjmH9GwpditWKJ3\nsFC2k53cJJDbGo90Dvw4758yle0GxSSXTUW970NB6XwqeVPePCvfUXs9q5vT29g7\nVJpl2fd0R9ZzaDnsRLg9mV3Mmet/PWgwncM5uKKIR+zqJRgO9tEncN/YPmrs8dbP\nXrgW1czjogb9hStBvI1G6Ap8fCEY8VWzQikcXkRAXFv/nmEi1y+gvsliuEr2allN\ncD1jUZ0fkD9NCQEjdI1U3lAWQF3YAeZuXZtv\n-----END CERTIFICATE-----";

    }
	
	function updateCert(string memory cert) public onlyOwner {
        certificate = cert;
    }
}

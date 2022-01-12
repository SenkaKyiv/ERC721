// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract KYIVMISTAh is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("KYIVMISTAh40:20", "40:20") {}
    //KYIVMISTAh - 40:20

// 1. Незалежно від стилю
// 2. Алхімія
// 3. Від неба ключі
// 4. Іменем
// 5. Час білого шуму
// 6. За війною весна
// 7. Ти дим
// 8. Львівський дощ
// 9. Один день
// 10. Антиподи
// 11. Пісня справжніх
// 12. Кольори мої 2
// 13. "777"
// 14. Не все.

// Музика везде - Векслярський
// "Один день" музика Фрейм
// Слова - Анатолій Векслярський, Денис (N.E.D) Кащей
// Аранжування - 
// Ілля Клімов
// Сергій Косаренко
// Роман Богорош
// Фінальний майстерінг - Олександр Павлюков
// NFT KYIVMISTAh was created by Nazarii Kravchenko in 2021 nov.

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/";
    }

    function safeMint(address to, string memory uri) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }
}
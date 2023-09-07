// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC1155, Ownable {
    constructor() ERC1155("https://ipfs.io/ipfs/Qmf8YWsoPm6pCddJsXz687vu8TfwfvgLktQmXPXDi8Gtqc") 
    {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function publicMint(address account, uint256 id, uint256 amount)
        public
        onlyOwner
    {
        _mint(account, id, amount, "");
    }

}
//0x30eD32d3daD3E5f6B81cA3c93B839b5Fb1450F3E

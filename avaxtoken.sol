// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    uint8 createDEC;
    // Mapping to store the in-game store items and their costs in tokens
     mapping(string => uint256) private _itemPrices;

    event ItemRedeemed(address indexed player, string item);

    constructor(uint8 _dec) ERC20("DegenGamingToken", "DGT") Ownable(msg.sender){
        createDEC = _dec;
        // Mint initial supply to the contract deployer (owner)
        _mint(msg.sender, 1000 * 10 ** uint8(_dec)); 
    }

    function decimals() public view virtual override returns (uint8) {
        return createDEC;
    }

     function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
        emit Transfer(address(0), account, amount);
    }
    // Function to redeem tokens for items in the in-game store
    function redeem(string memory item) public {
        require(_itemPrices[item] > 0, "Item not available for redemption");
        require(balanceOf(msg.sender) >= _itemPrices[item], "Insufficient balance");

        // Perform the redemption (in this example, transfer the tokens to the contract owner)
        _transfer(msg.sender, owner(), _itemPrices[item]);

        emit ItemRedeemed(msg.sender, item);
    }
    // Function to burn tokens (anyone can do this)
    function burn(uint256 amount) public {
         require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
}

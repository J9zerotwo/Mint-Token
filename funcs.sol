// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts@5.1.0/access/Ownable.sol";

contract Funcs is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("Funcs", "FUN")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    } 
    
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}

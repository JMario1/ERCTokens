// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Suid is ERC20{
    address public owner;
    uint256 fixedSupply ;

    constructor(uint256 supply) public ERC20("Suid", "SD") {
        owner = msg.sender;
        fixedSupply = supply;
    }

    function buyToken(address receiver) public payable {
        uint256 amount = msg.value;
        require(amount >= 10**15, "Spend minimium of 1 Finney");
        uint256 tokens = 1000 * amount / 10**18;
        require((totalSupply() + tokens) <= fixedSupply, "Total supply reached");
       _mint(receiver, tokens);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4 ;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract FirstToken is ERC20{

    using SafeMath for uint256;
    // string constant public name = "Nunmun Crypto Currency ";
    // string constant public symbol = "BD";
    uint256 public totalSupply = 10000;
    uint256 public _limitSupply = (totalSupply/10);
    address private admin;
    
    constructor () ERC20 ("TimeLock", "TimeLock"){
      admin = msg.sender;
      _limitSupply = block.timestamp;
    }
  }   

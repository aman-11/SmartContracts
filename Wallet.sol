//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Wallet {
    address payable public owner;

    //setting the contract address to be owners one
    constructor(address payable _owner) {
        owner = _owner;
    }

    modifier ownerAccess() {
        require(owner == msg.sender, "You are not the owner.");
        _;
    }

    //making function to deposit the ether
    function deposit() public payable {}

    //making function to send ether to other users
    function sendEther(address payable _recipient, uint256 _amount)
        public
        ownerAccess
    {
        _recipient.transfer(_amount);
    }

    //making the function for the checking balance
    function balanceOf() public view ownerAccess returns(uint){
        return address(this).balance;
    }

}

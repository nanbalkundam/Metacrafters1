// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Assesment{
    address owner = msg.sender;
    mapping(address => bool) invited;


    function NanbalParty(uint _password, uint _age) public  view returns(string memory){
        require(_age > 18, "Only adults Allowed");
        assert(_password == 1234);
        if(!invited[msg.sender] ){
        revert();
        }
        else{
            return ("Welcome");
        }

    }


    function inviteFriends(address _friend) public {
        require(owner == msg.sender, "You are not the owner");
        invited[_friend] = true;

    }

}
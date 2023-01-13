//SPDX-License-Identifier: MIT
pragma solidity > 0.8.0 <= 0.9.0;

contract blockchainMessenger{

    string public newMessage;
    address public owner;
    int count;

    constructor (){
        owner = msg.sender;
    }

    function inputMessage(string memory _newMessage) public{
        require(msg.sender == owner,"The message is not edited by the owner");
        newMessage = _newMessage;
        count++;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSend {

    function sendEther(address[] memory recipients) public payable {

        require(recipients.length > 0, "No recipients");

        uint amount = msg.value / recipients.length;

        for(uint i = 0; i < recipients.length; i++) {
            payable(recipients[i]).transfer(amount);
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrizeDistribution {
    address public organizer;
    mapping(address => uint256) public rewards;
    mapping(address => bool) public claimed;

    constructor() {
        organizer = msg.sender;
    }

    function setReward(address participant, uint256 amount) public {
        require(msg.sender == organizer, "Only organizer can set rewards");
        rewards[participant] = amount;
    }

    function claimReward() public {
        require(rewards[msg.sender] > 0, "No reward to claim");
        require(!claimed[msg.sender], "Reward already claimed");
        claimed[msg.sender] = true;
        payable(msg.sender).transfer(rewards[msg.sender]);
    }

    receive() external payable {}
}

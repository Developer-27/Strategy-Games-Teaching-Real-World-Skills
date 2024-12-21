// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StrategyGame {
    // Structure to store player details
    struct Player {
        uint256 id;
        string name;
        uint256 score;
        bool enrolled;
    }

    // Mapping to store players
    mapping(address => Player) public players;

    // Array to store leaderboards
    address[] public leaderboard;

    // Event for when a new player enrolls
    event PlayerEnrolled(address indexed playerAddress, uint256 playerId, string playerName);

    // Event for when a player updates their score
    event ScoreUpdated(address indexed playerAddress, uint256 newScore);

    // Counter for player IDs
    uint256 private playerIdCounter = 1;

    // Function to enroll a new player
    function enrollPlayer(string memory _name) public {
        require(!players[msg.sender].enrolled, "Player is already enrolled.");

        players[msg.sender] = Player({
            id: playerIdCounter,
            name: _name,
            score: 0,
            enrolled: true
        });

        leaderboard.push(msg.sender);
        emit PlayerEnrolled(msg.sender, playerIdCounter, _name);

        playerIdCounter++;
    }

    // Function to update the player's score
    function updateScore(uint256 _score) public {
        require(players[msg.sender].enrolled, "Player is not enrolled.");

        players[msg.sender].score = _score;
        emit ScoreUpdated(msg.sender, _score);
    }

    // Function to get leaderboard
    function getLeaderboard() public view returns (address[] memory, uint256[] memory) {
        uint256[] memory scores = new uint256[](leaderboard.length);

        for (uint256 i = 0; i < leaderboard.length; i++) {
            scores[i] = players[leaderboard[i]].score;
        }

        return (leaderboard, scores);
    }
}

# Strategy Games Teaching Real-World Skills

## Project Description
The `StrategyGame` smart contract is a blockchain-based platform designed to teach players essential real-world skills, such as decision-making, critical thinking, and resource management. Through competitive and engaging strategy games, players can track their performance, update scores, and appear on a dynamic public leaderboard, ensuring a transparent and rewarding gaming experience.

## Contract Address


**Contract Address:**
0xEB8183B6aeD9e91c28F7e5c81a1E9d36ca7Da364


## Project Vision
Our vision is to revolutionize education through gamification. By merging entertainment with practical learning, we aim to empower individuals with critical life skills while maintaining fairness, security, and transparency through blockchain technology.

## Key Features
- **Player Enrollment:**
  Players can register with a unique username to join the game.
  
- **Score Tracking:**
  Players can update their scores, which are securely stored on the blockchain.

- **Dynamic Leaderboard:**
  The leaderboard provides a transparent ranking system that highlights top-performing players.

- **Decentralized and Transparent:**
  Built on blockchain, ensuring fairness, security, and immutability of game data.

## How to Use
1. **Deployment:** Deploy the `StrategyGame` contract to an Ethereum-compatible blockchain.
2. **Enrollment:** Players call the `enrollPlayer` function with a unique name to register.
3. **Score Update:** Players can update their performance using the `updateScore` function.
4. **View Leaderboard:** Access the `getLeaderboard` function to retrieve player rankings and scores.

## Example Usage
- **Enroll a Player:**
  ```solidity
  enrollPlayer("PlayerName")

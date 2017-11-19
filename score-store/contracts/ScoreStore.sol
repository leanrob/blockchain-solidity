pragma solidity ^0.4.17;

/**
 * The ScoreStore contract stores a score and is used to demonstrate storage on the blockchain
 */
contract ScoreStore {
	mapping(string => int) PersonScores;
	function AddPersonScore(string name, int startingScore) {
		if(PersonScores[name] > 0) {
			throw;
		}
		else {
			PersonScores[name] = startingScore;
		}
	}

	function GetScore (string name) returns (int) {
		return PersonScores[name];
	}
}


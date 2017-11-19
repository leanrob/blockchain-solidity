pragma solidity ^0.4.17;

/**
 * The IScoreStore contract create a game
 */
contract IScoreStore {
	function GetScore(string name) returns (int);
}

/**
 * The Game contract is a game
 */
contract Game {
	function ShowScore(string name) returns (int) {
		IScoreStore scoreStore = IScoreStore(0xba99576a67906c7bfe437fb2963c490f34fd31e5);
		return scoreStore.GetScore(name);
	}
	
}

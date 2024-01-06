interface IOpmlLib {
  function initOpmlRequest(bytes32 inputHash) external returns (uint256 requestId); // we can construct the initialState using the input, can replace input with prompt (string)
	function uploadResult(uint256 requestId, bytes32 output);
	function startChallenge(uint256 requestId, finalState bytes32) returns (uint256 challengeId);
	function respondState(uint256 challengeId, bytes32 stateHash) external;
	function proposeState(uint256 challengeId, bytes32 stateHash) external;
	function assertStateTransition(uint256 challengeId);
  function isFinalized(uint256 requestId) external returns (bool);
	function getOutputHash(uint256 requestId) external returns (bytes32 output);
}

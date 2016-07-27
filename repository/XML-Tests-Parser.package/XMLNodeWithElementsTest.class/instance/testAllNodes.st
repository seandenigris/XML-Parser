tests
testAllNodes
	| nodeWithElements allNodes |

	nodeWithElements := self newNodeWithElements.
	allNodes := nodeWithElements allNodes.
	self
		assert: allNodes size = 14;
		assert: (allNodes at: 1) == nodeWithElements;
		assert: (allNodes at: 2) isComment;
		assert: ((allNodes at: 3) isElementNamed: 'root');
		assert: ((allNodes at: 4) isElementNamed: 'one');
		assert: ((allNodes at: 5) isStringNode: 'testing one');
		assert: ((allNodes at: 6) isElementNamed: 'two');
		assert: (allNodes at: 7) isPI;
		assert: ((allNodes at: 8) isElementNamed: 'three');
		assert: ((allNodes at: 9) isElementNamed: 'four');
		assert: ((allNodes at: 10) isStringNode: 'testing two');
		assert: ((allNodes at: 11) isElementNamed: 'prefix:four');
		assert: ((allNodes at: 12) isElementNamed: 'prefix:five');
		assert: ((allNodes at: 13) isElementNamed: 'four');
		assert: (allNodes at: 14) isComment.
	self
		assertList: (allNodes at: 3) allNodes selects: (allNodes copyFrom: 3 to: 13);
		assertList: (allNodes at: 4) allNodes selects: (allNodes copyFrom: 4 to: 7);
		assertList: (allNodes at: 6) allNodes selects: (allNodes copyFrom: 6 to: 6);
		assertList: (allNodes at: 8) allNodes selects: (allNodes copyFrom: 8 to: 10);
		assertList: (allNodes at: 9) allNodes selects: (allNodes copyFrom: 9 to: 9);
		assertList: (allNodes at: 11) allNodes selects: (allNodes copyFrom: 11 to: 12);
		assertList: (allNodes at: 12) allNodes selects: (allNodes copyFrom: 12 to: 12);
		assertList: (allNodes at: 13) allNodes selects: (allNodes copyFrom: 13 to: 13).
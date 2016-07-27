tests
testAllNodes
	| nodeWithElements allNodes |

	nodeWithElements := self newNodesWithElements.
	allNodes := nodeWithElements allNodes.
	self
		assert: allNodes size = 13;
		assert: (allNodes at: 1) == nodeWithElements;
		assert: (allNodes at: 2) isComment;
		assert: ((allNodes at: 3) isElementNamed: 'root');
		assert: ((allNodes at: 4) isElementNamed: 'a1');
		assert: ((allNodes at: 5) isStringNode: 'test1');
		assert: ((allNodes at: 6) isElementNamed: 'a2');
		assert: (allNodes at: 7) isPI;
		assert: ((allNodes at: 8) isElementNamed: 'b1');
		assert: ((allNodes at: 9) isElementNamed: 'b2');
		assert: ((allNodes at: 10) isStringNode: 'test2');
		assert: ((allNodes at: 11) isElementNamed: 'prefix:c1');
		assert: ((allNodes at: 12) isElementNamed: 'prefix:c2');
		assert: ((allNodes at: 13) isElementNamed: 'c1').
	self
		assertList: (allNodes at: 3) allNodes selects: (allNodes copyFrom: 3 to: 13);
		assertList: (allNodes at: 4) allNodes selects: (allNodes copyFrom: 4 to: 7);
		assertList: (allNodes at: 6) allNodes selects: (allNodes copyFrom: 6 to: 6);
		assertList: (allNodes at: 8) allNodes selects: (allNodes copyFrom: 8 to: 10);
		assertList: (allNodes at: 9) allNodes selects: (allNodes copyFrom: 9 to: 9);
		assertList: (allNodes at: 11) allNodes selects: (allNodes copyFrom: 11 to: 12);
		assertList: (allNodes at: 12) allNodes selects: (allNodes copyFrom: 12 to: 12);
		assertList: (allNodes at: 13) allNodes selects: (allNodes copyFrom: 13 to: 13).
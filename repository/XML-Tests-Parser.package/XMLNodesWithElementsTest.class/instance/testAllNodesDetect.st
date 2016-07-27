tests
testAllNodesDetect
	| nodeWithElements allNodes detectedNode |

	nodeWithElements := self newNodesWithElements.
	allNodes := nodeWithElements allNodes.
	detectedNode := nodeWithElements allNodesDetect: [:each | each isCData].
	self
		assert: detectedNode notNil;
		assert: detectedNode isCData;
		assert: detectedNode == (allNodes detect: [:each | each isCData]);
		assert: (nodeWithElements allNodesDetect: [:each | each isDeclaration]) isNil.
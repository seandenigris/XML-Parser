tests
testAllNodesDetectIfNone
	| nodeWithElements allNodes detectedNode |

	nodeWithElements := self newNodesWithElements.
	allNodes := nodeWithElements allNodes.
	detectedNode :=
		nodeWithElements
			allNodesDetect: [:each | each isCData]
			ifNone: ['absent'].
	self
		deny: detectedNode = 'absent';
		assert: detectedNode isCData;
		assert: detectedNode == (allNodes detect: [:each | each isCData] ifNone: ['absent']);
		assert:
			(nodeWithElements
				allNodesDetect: [:each | each isDeclaration]
				ifNone: ['absent']) = 'absent'.
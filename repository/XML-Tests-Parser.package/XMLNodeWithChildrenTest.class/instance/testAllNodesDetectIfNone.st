tests
testAllNodesDetectIfNone
	| nodeWithNodes allNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	detectedNode :=
		nodeWithNodes
			allNodesDetect: [:each | each isPI]
			ifNone: [#absent].
	self
		deny: detectedNode = #absent;
		assert: detectedNode isPI;
		assert: detectedNode == (allNodes detect: [:each | each isPI] ifNone: [#absent]);
		assert:
			(nodeWithNodes
				allNodesDetect: [:each | each isDeclaration]
				ifNone: [#absent]) = #absent.
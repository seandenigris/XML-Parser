tests
testDescendentNodesDetect
	| nodeWithNodes descendentNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	descendentNodes := nodeWithNodes descendentNodes.
	detectedNode := nodeWithNodes descendentNodesDetect: [:each | each isPI].
	self
		assert: detectedNode notNil;
		assert: detectedNode isPI;
		assert: detectedNode == (descendentNodes detect: [:each | each isPI]);
		assert: (nodeWithNodes descendentNodesDetect: [:each | each isElementNamed: 'absent']) isNil.
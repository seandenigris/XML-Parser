tests
testDescendentNodesDetectIfNone
	| nodeWithNodes descendentNodes detectedNode |

	nodeWithNodes := self newNodeWithNodes.
	descendentNodes := nodeWithNodes descendentNodes.
	detectedNode :=
		nodeWithNodes
			descendentNodesDetect: [:each | each isPI]
			ifNone: [#absent].
	self
		deny: detectedNode = #absent;
		assert: detectedNode isPI;
		assert: detectedNode == (descendentNodes detect: [:each | each isPI] ifNone: [#absent]);
		assert:
			(nodeWithNodes
				descendentNodesDetect: [:each | each isElementNamed: 'absent']
				ifNone: [#absent]) = #absent.
tests
testDescendentNodesDetectIfNone
	| nodeWithElements descendentNodes detectedNode |

	nodeWithElements := self newNodesWithElements.
	descendentNodes := nodeWithElements descendentNodes.
	detectedNode :=
		nodeWithElements
			descendentNodesDetect: [:each | each isPI]
			ifNone: ['absent'].
	self
		deny: detectedNode = 'absent';
		assert: detectedNode isPI;
		assert: detectedNode == (descendentNodes detect: [:each | each isPI] ifNone: ['absent']);
		assert:
			(nodeWithElements
				descendentNodesDetect: [:each | each isDeclaration]
				ifNone: ['absent']) = 'absent'.
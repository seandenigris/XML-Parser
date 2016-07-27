tests
testDescendentNodesDetect
	| nodeWithElements descendentNodes detectedNode |

	nodeWithElements := self newNodesWithElements.
	descendentNodes := nodeWithElements descendentNodes.
	detectedNode := nodeWithElements descendentNodesDetect: [:each | each isPI].
	self
		assert: detectedNode notNil;
		assert: detectedNode isPI;
		assert: detectedNode == (descendentNodes detect: [:each | each isPI]);
		assert: (nodeWithElements descendentNodesDetect: [:each | each isDeclaration]) isNil.
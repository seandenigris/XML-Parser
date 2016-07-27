tests
testNodesDetectIfNone
	| node detectedNode |

	node := self newNodeWithNodes.
	detectedNode :=
		node
			nodesDetect: [:each | each isComment]
			ifNone: [#absent].
	self deny: detectedNode = #absent.
	self assert:
		detectedNode ==
			(node nodes detect: [:each | each isComment] ifNone: [#absent]).
	self assert:
		(node
			nodesDetect: [:each | each isElementNamed: 'absent']
			ifNone: [#absent]) = #absent.
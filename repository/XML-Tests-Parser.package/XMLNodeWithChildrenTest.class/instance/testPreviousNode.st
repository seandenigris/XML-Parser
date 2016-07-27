tests
testPreviousNode
	| nodeWithNodes previousNode |

	super testPreviousNode.
	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes do: [:each |
		self assert: each previousNode == previousNode.
		previousNode := each].
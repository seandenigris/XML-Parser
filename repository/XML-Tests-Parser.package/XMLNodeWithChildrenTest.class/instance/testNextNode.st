tests
testNextNode
	| nodeWithNodes nextNode |

	super testNextNode.
	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes reverseDo: [:each |
		self assert: each nextNode == nextNode.
		nextNode := each].
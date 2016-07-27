tests
testNodeBefore
	| nodeWithNodes nodeBefore |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes do: [:each |
		self assert: (nodeWithNodes nodeBefore: each) == nodeBefore.
		nodeBefore := each].
	self assert: (nodeWithNodes nodeBefore: self nodeClass new) isNil.
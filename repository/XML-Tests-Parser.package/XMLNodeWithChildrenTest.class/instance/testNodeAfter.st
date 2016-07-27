tests
testNodeAfter
	| nodeWithNodes nodeAfter |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes reverseDo: [:each |
		self assert: (nodeWithNodes nodeAfter: each) == nodeAfter.
		nodeAfter := each].
	self assert: (nodeWithNodes nodeAfter: self nodeClass new) isNil.
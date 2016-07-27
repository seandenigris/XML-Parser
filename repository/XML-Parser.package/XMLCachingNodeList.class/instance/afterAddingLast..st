private
afterAddingLast: aNode
	aNode isElement
		ifTrue: [self elementAddedAtEnd: aNode].
	super afterAddingLast: aNode.
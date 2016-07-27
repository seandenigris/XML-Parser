accessing
addNode: aNode
	^ aNode isTag
		ifTrue: [self addElement: aNode]
		ifFalse: [self addChildNode: aNode]
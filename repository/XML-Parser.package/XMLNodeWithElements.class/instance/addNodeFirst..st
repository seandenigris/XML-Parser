accessing
addNodeFirst: aNode
	^ self isEmpty
		ifTrue: [self addNode: aNode]
		ifFalse: [self addNode: aNode before: self topNode]
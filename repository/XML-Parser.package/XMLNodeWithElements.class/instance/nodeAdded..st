announcements
nodeAdded: aNode
	super nodeAdded: aNode.

	aNode isTag
		ifTrue: [self elementCache cacheElement: aNode].
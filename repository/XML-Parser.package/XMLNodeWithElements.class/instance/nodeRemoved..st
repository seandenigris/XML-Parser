announcements
nodeRemoved: aNode
	super nodeRemoved: aNode.

	aNode isTag
		ifTrue: [self elementCache uncacheElement: aNode].
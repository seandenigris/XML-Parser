accessing
parent: aNode
	super parent: aNode.

	(aNode notNil and: [aNode isTag])
		ifTrue: [self inheritMappingsFrom: aNode scope].
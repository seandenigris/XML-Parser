announcements
nodeAdded: aNode
	super nodeAdded: aNode.
	
	(aNode isTag and: [self usesNamespaces])
		ifTrue: [aNode inheritMappingsFrom: self scope].
	aNode isAttribute
		ifTrue: [self validateAttribute: aNode name]
		
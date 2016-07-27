adding
at: anIndex put: aNode
	(self at: anIndex ifAbsent: [nil])
		ifNotNil: [self with: [super at: anIndex put: nil] remove: (self at: anIndex)].
	^ self with: [super at: anIndex put: aNode] add: aNode.
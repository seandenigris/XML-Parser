accessing
nodeAfter: aNode
	^ self nodes after: aNode ifAbsent: [nil]
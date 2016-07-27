accessing
nodeBefore: aNode
	^ self nodes before: aNode ifAbsent: [nil]
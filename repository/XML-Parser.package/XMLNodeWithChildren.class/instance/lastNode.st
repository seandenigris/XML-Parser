accessing
lastNode
	^ self nodes at: self nodes size ifAbsent: [nil]
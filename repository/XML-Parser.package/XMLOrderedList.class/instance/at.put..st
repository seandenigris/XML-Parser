accessing
at: anIndex put: aValue
	anIndex = (collection size + 1)
		ifTrue: [^ collection addLast: aValue]
		ifFalse: [^ collection at: anIndex put: aValue]
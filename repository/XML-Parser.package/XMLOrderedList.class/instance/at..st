accessing
at: anIndex
	(anIndex > 0 and: [anIndex <= collection size])
		ifTrue: [^ collection at: anIndex]
		ifFalse: [^ self defaultValue]
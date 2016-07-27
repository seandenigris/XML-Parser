testing
atEnd
	(streamReader atEnd and: [context isInitialized])
		ifFalse: [^ false].
	context atEnd
		ifFalse: [self nextEndDocument].
	^ true.
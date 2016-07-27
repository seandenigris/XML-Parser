testing
atEnd
	(streamReader atEnd and: [context isInitialized])
		ifFalse: [^ false].

	context atEnd
		ifFalse: [
			context isInInternalSubset
				ifTrue: [self errorExpected: 'end of internal subset'].
			self nextEndDocument].
	^ true.
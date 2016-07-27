testing
atEnd
	context atEnd
		ifTrue: [^ true].
	(context isInitialized and: [streamReader atEnd])
		ifTrue: [
			context isInInternalSubset
				ifTrue: [self errorExpected: 'end of internal subset'].
			self nextEndDocument.
			^ true].
	^ false.
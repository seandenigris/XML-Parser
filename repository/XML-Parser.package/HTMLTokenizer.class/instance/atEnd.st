testing
atEnd
	context atEnd
		ifTrue: [^ true].
	(context isInitialized and: [streamReader atEnd])
		ifTrue: [
			self nextEndDocument.
			^ true].
	^ false.
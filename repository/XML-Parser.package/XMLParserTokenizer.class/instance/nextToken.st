tokenizing
nextToken
	(streamReader atEnd and: [context isInitialized])
		ifTrue: [^ self nextEndDocument].

	context isInContent
		ifTrue: [^ self nextContentToken].
	context isInSubset
		ifTrue: [^ self nextSubsetToken].
	context isInProlog
		ifTrue: [^ self nextPrologToken].
	context notInitialized 
		ifTrue: [^ self nextStartDocument].

	self nextEndDocument.
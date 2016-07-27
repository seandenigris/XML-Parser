tokenizing
nextToken
	context notInitialized 
		ifTrue: [^ self nextStartDocument].

	self atEnd
		ifTrue: [^ self].
	context isInContent
		ifTrue: [^ self nextContentToken].
	context isInSubset
		ifTrue: [^ self nextSubsetToken].

	self nextPrologToken.
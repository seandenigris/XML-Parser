tokenizing
nextToken
	self atEnd
		ifTrue: [^ self].
	context isInContent
		ifTrue: [^ self nextContentToken].
	context isInSubset
		ifTrue: [^ self nextSubsetToken].
	context notInitialized 
		ifTrue: [^ self nextStartDocument].

	self nextPrologToken.
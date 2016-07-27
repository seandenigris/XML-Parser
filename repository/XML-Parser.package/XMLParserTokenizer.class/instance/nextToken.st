tokenizing
nextToken
	self atEnd
		ifTrue: [^ self].

	context isInContent
		ifTrue: [^ self nextContentToken].
	context isInProlog
		ifTrue: [^ self nextPrologToken].
	context notInitialized 
		ifTrue: [^ self nextStartDocument].

	self nextSubsetToken.

	
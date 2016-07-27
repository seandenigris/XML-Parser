tokenizing
nextValue
	^ streamReader atQuote
		ifTrue: [streamReader upTo: streamReader next]
		ifFalse: [self nextName]
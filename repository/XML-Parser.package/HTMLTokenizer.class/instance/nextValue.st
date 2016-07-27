tokenizing
nextValue
	^ self atQuote
		ifTrue: [streamReader upTo: streamReader next]
		ifFalse: [self nextName]
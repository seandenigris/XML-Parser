parsing
parseFragment
	(self peekFor: $#)
		ifTrue: [^ self nextPercentEncodedUpToEnd]
		ifFalse: [^ '']
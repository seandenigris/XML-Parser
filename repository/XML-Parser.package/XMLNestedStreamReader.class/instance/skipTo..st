streaming
skipTo: aDelimiter
	[self atEnd] whileFalse: [self next == aDelimiter ifTrue: [^ true]].
	^ false.
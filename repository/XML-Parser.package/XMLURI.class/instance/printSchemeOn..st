printing
printSchemeOn: aStream
	self hasScheme
		ifTrue: [
			aStream
				nextPutAll: scheme;
				nextPutAll: '://']
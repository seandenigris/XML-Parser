printing
printSchemeOn: aStream
	scheme ifNotEmpty: [
		aStream
			nextPutAll: scheme;
			nextPutAll: '://']
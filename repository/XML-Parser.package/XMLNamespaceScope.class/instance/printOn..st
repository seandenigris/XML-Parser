printing
printOn: aStream
	self prefixesAndURIsDo: [:prefix :uri |
		aStream nextPutAll: 'xmlns'.
		prefix ifNotEmpty: [
			aStream
				nextPut: $:;
				nextPutAll: prefix].
		aStream
			nextPut: $=;
			nextPut: $";
			nextPutAll: uri;
			nextPut: $";
			space]
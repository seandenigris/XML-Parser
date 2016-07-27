printing
printFragmentOn: aStream
	fragment ifNotEmpty: [
		aStream
			nextPut: $#;
			nextPutAll: fragment]
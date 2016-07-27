printing
printQueryStringOn: aStream
	queryString ifNotEmpty: [
		aStream
			nextPut: $?;
			nextPutAll: queryString]
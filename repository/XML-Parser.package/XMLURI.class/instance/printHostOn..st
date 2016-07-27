printing
printHostOn: aStream
	host ifNotEmpty: [
		scheme ifEmpty: [aStream nextPutAll: '//'].
		aStream nextPutAll: host]
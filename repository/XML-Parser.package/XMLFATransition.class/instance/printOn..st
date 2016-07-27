printing
printOn: aStream
	matcher printOn: aStream.
	aStream nextPutAll: '->'.
	nextState identityHash printOn: aStream.
	aStream nextPut: $;
	
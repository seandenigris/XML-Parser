printing
printExternalIDFromPublicID: aPublicId systemID: aSystemId on: aStream
	aPublicId
		ifNotEmpty: [
			aStream
				nextPutAll: 'PUBLIC';
				space;
				nextPut: $";
				nextPutAll: aPublicId;
				nextPut: $"]
		ifEmpty: [aSystemId ifNotEmpty: [aStream nextPutAll: 'SYSTEM']].
	aSystemId ifNotEmpty: [
		aStream
			space;
			nextPut: $";
			nextPutAll: aSystemId;
			nextPut: $"]
	
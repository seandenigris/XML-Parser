printing
printShortTagOn: aStream
	aStream nextPutAll: '<', self tag.
	self printAttributesOn: aStream.
	aStream nextPutAll: '/>'.
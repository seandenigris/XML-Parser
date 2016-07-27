printing
printAttributesOn: aStream
	self attributes ifNotNil: [
		self attributes keys do: [ :key | aStream nextPutAll: ' ', key asString, '="', (attributes at: key) asString, '"' ]
	].
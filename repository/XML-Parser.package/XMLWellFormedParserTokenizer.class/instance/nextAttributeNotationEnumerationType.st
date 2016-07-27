tokenizing - dtd
nextAttributeNotationEnumerationType
	writeStream
		reset;
		nextPutAll: 'NOTATION '.
	self skipSeparatorsReplacingParameterEntities.
	writeStream nextPut: (self expectNext: $().

	self
		skipSeparatorsReplacingParameterEntities;
		nextNameOnWriteStream;
		skipSeparatorsReplacingParameterEntities;
		nextNameListValuesOnWriteStream.

	^ writeStream contents.
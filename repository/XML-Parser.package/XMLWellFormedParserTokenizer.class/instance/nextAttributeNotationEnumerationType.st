tokenizing - dtd
nextAttributeNotationEnumerationType
	writeStream
		reset;
		nextPutAll: 'NOTATION '.
	self skipSeparatorsReplacingParameterEntities.
	writeStream nextPut: (self expectNext: $().

	self
		skipSeparatorsReplacingParameterEntities;
		nextNameOn: writeStream;
		skipSeparatorsReplacingParameterEntities;
		nextNameListValuesOn: writeStream.

	^ writeStream contents.
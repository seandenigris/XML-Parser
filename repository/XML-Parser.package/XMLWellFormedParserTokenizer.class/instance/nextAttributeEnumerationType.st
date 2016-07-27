tokenizing - dtd
nextAttributeEnumerationType
	writeStream
		reset;
		nextPut: (self expectNext: $().
	self
		skipSeparatorsReplacingParameterEntities;
		nextNmtokenOn: writeStream;
		skipSeparatorsReplacingParameterEntities.
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsReplacingParameterEntities;
				nextNmtokenOn: writeStream;
				skipSeparatorsReplacingParameterEntities].
	writeStream nextPut: streamReader next.

	^ writeStream contents.
tokenizing - dtd
nextAttributeEnumerationType
	writeStream
		reset;
		nextPut: (self expectNext: $().
	self
		skipSeparatorsReplacingParameterEntities;
		nextNmtokenOnWriteStream;
		skipSeparatorsReplacingParameterEntities.
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsReplacingParameterEntities;
				nextNmtokenOnWriteStream;
				skipSeparatorsReplacingParameterEntities].
	writeStream nextPut: streamReader next.

	^ writeStream contents.
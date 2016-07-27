tokenizing - dtd
nextNameListValuesOnWriteStream
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsReplacingParameterEntities;
				nextNameOnWriteStream;
				skipSeparatorsReplacingParameterEntities].
	writeStream nextPut: streamReader next.
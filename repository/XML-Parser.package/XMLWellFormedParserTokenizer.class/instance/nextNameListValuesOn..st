tokenizing - dtd
nextNameListValuesOn: aStream
	[streamReader peek == $)]
		whileFalse: [
			aStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsReplacingParameterEntities;
				nextNameOn: aStream;
				skipSeparatorsReplacingParameterEntities].
	aStream nextPut: streamReader next.
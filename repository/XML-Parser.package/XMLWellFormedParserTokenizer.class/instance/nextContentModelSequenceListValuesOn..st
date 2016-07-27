tokenizing - dtd
nextContentModelSequenceListValuesOn: aStream
	[streamReader peek == $)]
		whileFalse: [
			aStream nextPut: (self expectNext: $,).
			self
				nextContentModelParticleOn: aStream;
				skipSeparatorsReplacingParameterEntities].
	aStream nextPut: streamReader next.
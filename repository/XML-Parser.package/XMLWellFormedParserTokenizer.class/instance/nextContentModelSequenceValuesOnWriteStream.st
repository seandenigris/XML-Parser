tokenizing - dtd
nextContentModelSequenceValuesOnWriteStream
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $,).
			self
				nextContentModelParticleOnWriteStream;
				skipSeparatorsReplacingParameterEntities].
	writeStream nextPut: streamReader next.
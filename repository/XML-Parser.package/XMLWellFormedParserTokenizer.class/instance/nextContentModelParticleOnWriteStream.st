tokenizing - dtd
nextContentModelParticleOnWriteStream
	self skipSeparatorsReplacingParameterEntities.
	streamReader peek == $(
		ifTrue: [
			writeStream nextPut: streamReader next.
			self nextContentModelChoiceOrSequenceValuesOnWriteStream]
		ifFalse: [
			self
				nextNameOnWriteStream;
				nextContentModelUnaryOperatorOnWriteStream]
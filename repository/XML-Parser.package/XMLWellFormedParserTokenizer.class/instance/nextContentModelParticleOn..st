tokenizing - dtd
nextContentModelParticleOn: aStream
	self skipSeparatorsReplacingParameterEntities.
	streamReader peek == $(
		ifTrue: [
			aStream nextPut: streamReader next.
			self nextContentModelChoiceOrSequenceListValuesOn: aStream]
		ifFalse: [
			aStream nextPutAll: self nextName.
			self nextContentModelUnaryOperatorOn: aStream]
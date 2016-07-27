tokenizing - dtd
nextContentModelChoiceOrSequenceValuesOnWriteStream
	self
		nextContentModelParticleOnWriteStream;
		skipSeparatorsReplacingParameterEntities.
	streamReader peek == $|
		ifTrue: [self nextContentModelChoiceValuesOnWriteStream]
		ifFalse: [self nextContentModelSequenceValuesOnWriteStream].
	self nextContentModelUnaryOperatorOnWriteStream.
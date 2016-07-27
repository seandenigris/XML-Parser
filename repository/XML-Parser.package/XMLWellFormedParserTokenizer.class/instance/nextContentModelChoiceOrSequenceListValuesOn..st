tokenizing - dtd
nextContentModelChoiceOrSequenceListValuesOn: aStream
	self
		nextContentModelParticleOn: aStream;
		skipSeparatorsReplacingParameterEntities.
	streamReader peek == $|
		ifTrue: [self nextContentModelChoiceListValuesOn: aStream]
		ifFalse: [self nextContentModelSequenceListValuesOn: aStream].
	self nextContentModelUnaryOperatorOn: aStream.
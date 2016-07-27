tokenizing - dtd
nextContentModelChoiceOrSequenceOnWriteStreamFromEntity: aParameterEntity
	self
		nextContentModelParticleOnWriteStream;
		skipSeparatorsInDeclaration.
	streamReader peek == $|
		ifTrue: [self nextContentModelChoiceValuesOnWriteStream]
		ifFalse: [self nextContentModelSequenceOnWriteStream].
	self
		checkNestingOfParameterEntity: aParameterEntity;
		nextContentModelUnaryOperatorOnWriteStream.
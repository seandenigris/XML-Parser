tokenizing - dtd
nextConditionalSectionFromEntity: aParameterEntity
	"skip ["
	streamReader next.
	self
		skipSeparatorsInDeclaration;
		expectNext: $I.
	streamReader peek == $N
		ifTrue: [self nextStartIncludeSectionFromEntity: aParameterEntity]
		ifFalse: [self nextIgnoreSectionFromEntity: aParameterEntity].
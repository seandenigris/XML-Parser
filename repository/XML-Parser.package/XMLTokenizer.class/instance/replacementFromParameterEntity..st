accessing
replacementFromParameterEntity: anEntity
	anEntity ifNil: [^ ''].

	^ context isInLiteralValue
		ifTrue: [anEntity replacementForLiteralContext]
		ifFalse: [anEntity replacementForDTDContext]
entity replacement
replacementFromGeneralEntity: anEntity
	anEntity ifNil: [^ ''].

	(context isInLiteralValue and: [anEntity isExternal])
		ifTrue: [self errorLiteralContextExternalEntity: anEntity].

	^ context isInLiteralValue
		ifTrue: [anEntity replacementForLiteralContext]
		ifFalse: [anEntity replacementForContentContext].
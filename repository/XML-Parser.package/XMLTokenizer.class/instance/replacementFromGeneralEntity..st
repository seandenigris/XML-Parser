entity replacement
replacementFromGeneralEntity: anEntity
	anEntity ifNil: [^ ''].

	(context isInLiteralValue and: [anEntity isExternal])
		ifTrue: [self parseError: 'External general entity ', anEntity asReference, ' in literal context'].

	^ context isInLiteralValue
		ifTrue: [anEntity replacementForLiteralContext]
		ifFalse: [anEntity replacementForContentContext].
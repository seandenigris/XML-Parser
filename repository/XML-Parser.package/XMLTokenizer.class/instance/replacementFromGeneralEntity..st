accessing
replacementFromGeneralEntity: anEntity
	anEntity ifNil: [^ ''].

	^ context isInLiteralValue
		ifTrue: [
			anEntity isExternal
				ifTrue: [self parseError: 'External general entity ', anEntity asReference, ' in literal context'].
			anEntity replacementForLiteralContext]
		ifFalse: [anEntity replacementForContentContext].
entity replacement
replacementFromGeneralEntity: anEntity
	anEntity ifNil: [^ ''].

	^ context isInLiteralValue
		ifTrue: [
			anEntity isExternal
				ifTrue: [self entityError: 'External general entity ', anEntity asReference, ' in literal context'].
			anEntity replacementForLiteralContext]
		ifFalse: [anEntity replacementForContentContext].
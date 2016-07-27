entity replacement
replacementFromGeneralEntity: anEntity
	(context isInLiteralValue and: [anEntity isExternal])
		ifTrue: [self parseError: 'External general entity ', anEntity asReference, ' in literal context'].

	^ super replacementFromGeneralEntity: anEntity.
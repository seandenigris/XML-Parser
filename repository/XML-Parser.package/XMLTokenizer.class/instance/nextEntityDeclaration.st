tokenizing dtd
nextEntityDeclaration
	| entityName entityDef referenceClass reference |
	streamReader skipSeparators.
	referenceClass := streamReader peek == $%
		ifTrue: [
			streamReader next.
			streamReader skipSeparators.
			DTDParameterEntityDeclaration]
		ifFalse: [DTDEntityDeclaration].
	entityName := self nextLiteral.
	streamReader skipSeparators.
	entityDef := (streamReader peek == $" or: [streamReader peek == $'])
		ifTrue: [self nextEntityValue]
		ifFalse: [self nextExternalId].
	streamReader skipUpTo: $>.
	reference := referenceClass name: entityName value: entityDef.
	reference registerIn: self.
	^reference
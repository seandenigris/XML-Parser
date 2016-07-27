tokenizing dtd
nextEntityDeclaration
	| entityName entityDef referenceClass reference |
	self skipSeparators.
	referenceClass := self peek == $%
		ifTrue: [
			self next.
			self skipSeparators.
			DTDParameterEntityDeclaration]
		ifFalse: [DTDEntityDeclaration].
	entityName := self nextLiteral.
	self skipSeparators.
	entityDef := (self peek == $" or: [self peek == $'])
		ifTrue: [self nextEntityValue]
		ifFalse: [self nextExternalId].
	self skipUpTo: $>.
	reference := referenceClass name: entityName value: entityDef.
	reference registerIn: self.
	^reference
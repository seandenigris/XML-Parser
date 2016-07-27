handling tokens
handleGeneralEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	aNotation ifNotEmpty: [
		self isValidating
			ifTrue: [
				self doctypeDefinition unparsedEntityValidator
					validateUnparsedEntity: aName
					withNotation: aNotation].
		self doctypeDefinition
			addUnparsedEntity: aName
			ndata: aNotation.
		^ self].

	self doctypeDefinition
		addExternalGeneralEntity: aName
		resolver: self externalEntityResolver
		uri: aSystemId
		from: self currentURI.
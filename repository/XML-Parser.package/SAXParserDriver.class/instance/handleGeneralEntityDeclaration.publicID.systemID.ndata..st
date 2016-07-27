handling - dtd
handleGeneralEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	aNotation
		ifNotEmpty: [
			self isValidating
				ifTrue: [
					self doctypeDefinition unparsedEntityValidator
						validateUnparsedEntity: aName
						withNotation: aNotation].
			self doctypeDefinition
				addUnparsedEntity: aName
				ndata: aNotation]
		ifEmpty: [
			self resolvesExternalEntities
				ifTrue: [
					self doctypeDefinition
						addExternalGeneralEntity: aName
						resolver: self externalEntityResolver
						uri: aSystemID
						from: self currentURI]].

	self saxHandler
		generalEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID
		ndata: aNotation.
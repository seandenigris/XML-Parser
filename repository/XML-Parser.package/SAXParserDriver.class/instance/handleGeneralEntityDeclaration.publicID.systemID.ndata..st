handling tokens
handleGeneralEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	aNotation
		ifNotEmpty: [
			self isValidating
				ifTrue: [
					self dtd unparsedEntityValidator
						validateUnparsedEntity: aName
						withNotation: aNotation].
			self dtd
				addUnparsedEntity: aName
				ndata: aNotation]
		ifEmpty: [
			self resolvesExternalEntities
				ifTrue: [
					self dtd
						addExternalGeneralEntity: aName
						resolver: self externalEntityResolver
						uri: aSystemId
						from: self currentURI]].

	self saxHandler
		generalEntityDeclaration: aName
		publicID: aPublicId
		systemID: aSystemId
		ndata: aNotation.
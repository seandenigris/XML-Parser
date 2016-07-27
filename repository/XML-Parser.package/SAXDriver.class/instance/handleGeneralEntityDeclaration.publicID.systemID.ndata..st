handling tokens
handleGeneralEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	aNotation
		ifEmpty: [
			self resolvesExternalEntities
				ifTrue: [
					self dtd
						generalEntityAt: aName
						put: (self externalEntityResolver
							resolveGeneralEntity: aName
							uri: aSystemId
							from: self documentURI)]]
		ifNotEmpty: [
			self dtd
				unparsedEntityAt: aName
				put: aNotation].

	self saxHandler
		generalEntityDeclaration: aName
		publicID: aPublicId
		systemID: aSystemId
		ndata: aNotation.
handling tokens
handleGeneralEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	aNotation
		ifNotEmpty: [
			self dtd
				unparsedEntityAt: aName
				put: aNotation]
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
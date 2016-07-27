handling tokens
handleParameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self resolvesExternalEntities
		ifTrue: [
			self dtd
				parameterEntityAt: aName
				put: (self externalEntityResolver
					resolveParameterEntity: aName
					uri: aSystemId
					from: self documentURI)].

	self saxHandler
		parameterEntityDeclaration: aName
		publicID: aPublicId
		systemID: aSystemId
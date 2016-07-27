handling tokens
handleParameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self saxHandler resolvesExternalEntities
		ifTrue: [
			self dtd
				addExternalParameterEntity: aName
				resolver: self externalEntityResolver
				uri: aSystemId
				from: self currentURI].

	self saxHandler
		parameterEntityDeclaration: aName
		publicID: aPublicId
		systemID: aSystemId.
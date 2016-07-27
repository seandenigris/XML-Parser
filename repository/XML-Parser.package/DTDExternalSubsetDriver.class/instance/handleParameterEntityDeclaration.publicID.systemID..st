handling tokens
handleParameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self dtd
		parameterEntityAt: aName
		put:
			(self externalEntityResolver
				resolveParameterEntity: aName
				uri: aSystemId
				from: self documentURI).
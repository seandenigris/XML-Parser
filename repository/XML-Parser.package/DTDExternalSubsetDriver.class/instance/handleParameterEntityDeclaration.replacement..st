handling tokens
handleParameterEntityDeclaration: aName replacement: aReplacement
	self dtd
		parameterEntityAt: aName
		put:
			(DTDParameterEntity
				name: aName
				replacement: aReplacement
				uri: self documentURI).
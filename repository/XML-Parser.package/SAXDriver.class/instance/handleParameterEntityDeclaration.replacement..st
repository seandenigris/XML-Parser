handling tokens
handleParameterEntityDeclaration: aName replacement: aReplacement
	self dtd
		parameterEntityAt: aName
		put:
			(DTDParameterEntity
				name: aName
				replacement:aReplacement).

	self saxHandler
		parameterEntityDeclaration: aName
		replacement: aReplacement
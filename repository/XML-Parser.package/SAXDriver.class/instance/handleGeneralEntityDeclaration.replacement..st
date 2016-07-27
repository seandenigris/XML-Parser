handling tokens
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self dtd
		generalEntityAt: aName
		put:
			(DTDGeneralEntity
				name: aName
				replacement: aReplacement).

	self saxHandler
		generalEntityDeclaration: aName
		replacement: aReplacement
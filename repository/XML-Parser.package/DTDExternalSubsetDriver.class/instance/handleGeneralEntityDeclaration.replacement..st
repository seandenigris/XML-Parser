handling tokens
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self dtd
		generalEntityAt: aName
		put:
			(DTDGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: self documentURI).
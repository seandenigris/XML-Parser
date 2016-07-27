accessing
addGeneralEntity: aName replacement: aReplacement from: aDocumentOrEntityUri
	self
		generalEntityAt: aName
		put:
			(DTDGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityUri)
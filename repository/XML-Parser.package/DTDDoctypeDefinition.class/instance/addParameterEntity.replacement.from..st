accessing
addParameterEntity: aName replacement: aReplacement from: aDocumentOrEntityUri
	self 
		parameterEntityAt: aName
		put:
			(DTDParameterEntity
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityUri).
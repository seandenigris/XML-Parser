adding
addParameterEntity: aName replacement: aReplacement from: aDocumentOrEntityUri
	self parameterEntities
		at: aName
		ifAbsentPut: [
			DTDParameterEntity
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityUri]
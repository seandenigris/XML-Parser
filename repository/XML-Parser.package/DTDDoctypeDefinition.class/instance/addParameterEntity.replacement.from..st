adding
addParameterEntity: aName replacement: aReplacement from: aDocumentOrEntityURIString
	self parameterEntities
		at: aName
		ifAbsentPut: [
			DTDParameterEntity
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityURIString]
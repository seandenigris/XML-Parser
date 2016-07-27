adding
addGeneralEntity: aName replacement: aReplacement from: aDocumentOrEntityUri
	self generalEntities
		at: aName
		ifAbsentPut: [
			DTDGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityUri]
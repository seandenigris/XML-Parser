adding
addGeneralEntity: aName replacement: aReplacement from: aDocumentOrEntityURIString
	self generalEntities
		at: aName
		ifAbsentPut: [
			DTDGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityURIString]
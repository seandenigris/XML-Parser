adding
addInternalGeneralEntity: aName replacement: aReplacement baseURI: aBaseURIString
	self generalEntities
		at: aName
		ifAbsentPut: [
			DTDInternalGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aBaseURIString]
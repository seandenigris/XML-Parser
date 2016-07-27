adding
addInternalParameterEntity: aName replacement: aReplacement baseURI: aBaseURIString
	self parameterEntities
		at: aName
		ifAbsentPut: [
			DTDInternalParameterEntity
				name: aName
				replacement: aReplacement
				uri: aBaseURIString]
validation
validateID: anId inAttribute: anAttribute
	(XMLWellFormedParserTokenizer isName: anId)
		ifFalse: [
			self
				errorInvalidID: anId
				inAttribute: anAttribute].
	self
		validateUniquenessOfID: anId
		inAttribute: anAttribute.
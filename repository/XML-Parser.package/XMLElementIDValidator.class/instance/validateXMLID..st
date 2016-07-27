validation
validateXMLID: anId
	(XMLWellFormedParserTokenizer isNCName: anId)
		ifFalse: [
			self
				errorInvalidID: anId
				inAttribute: 'xml:id'].
	self
		validateUniquenessOfID: anId
		inAttribute: 'xml:id'.
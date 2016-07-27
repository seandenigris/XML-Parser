validation
validateID: anId
	(XMLWellFormedParserTokenizer isName: anId)
		ifFalse: [XMLValidationException signal: 'Invalid ID ', anId, ' in attribute "', attribute, '"']
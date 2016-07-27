validation
validateID: anId
	(XMLTokenizer isName: anId)
		ifFalse: [XMLValidationException signal: 'Invalid ID ', anId, ' in attribute "', name, '"']
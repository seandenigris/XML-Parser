validation
validateName: aName
	(XMLWellFormedParserTokenizer isNmtoken: aName)
		ifFalse: [XMLValidationException signal: 'Invalid name "', aName, '" in attribute "', attribute, '"']
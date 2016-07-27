validation
validateName: aName
	(XMLTokenizer isNmtoken: aName)
		ifFalse: [XMLValidationException signal: 'Invalid name "', name, '" in attribute "', name, '"']
validation
validateName: aName
	(XMLTokenizer isNmtoken: aName)
		ifFalse: [XMLValidationException signal: 'Invalid name "', aName, '" in attribute "', attribute, '"']
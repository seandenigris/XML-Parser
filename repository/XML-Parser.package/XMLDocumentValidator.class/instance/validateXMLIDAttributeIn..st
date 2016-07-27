validation
validateXMLIDAttributeIn: anAttributeDictionary
	self hasValidators
		ifFalse: [self defaultXMLIDValidator validateAttributes: anAttributeDictionary]
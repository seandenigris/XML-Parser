validation
validateXMLIDAttributeValidator
	self isIDValidator
		ifFalse: [self errorInvalidXMLIDAttributeValidator]
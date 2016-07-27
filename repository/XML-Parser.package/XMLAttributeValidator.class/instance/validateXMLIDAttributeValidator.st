validating
validateXMLIDAttributeValidator
	self isIDValidator
		ifFalse: [self errorInvalidXMLIDAttributeValidator]
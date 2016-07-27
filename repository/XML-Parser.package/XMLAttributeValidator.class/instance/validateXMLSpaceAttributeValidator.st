validation
validateXMLSpaceAttributeValidator
	(self isEnumerationValidator
		and: [self allowedValues size = 2
			and: [(self allowedValues includes: 'preserve')
				and: [self allowedValues includes: 'default']]])
		ifFalse: [self errorInvalidXMLSpaceAttributeValidator]
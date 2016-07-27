validation
validateXMLSpaceAttributeValidator
	(self isEnumerationValidator
		and: [self allowedValues size = 2
			and: [#('preserve' 'default') allSatisfy: [:each | self allowedValues includes: each]]])
		ifFalse: [self errorInvalidXMLSpaceAttributeValidator]
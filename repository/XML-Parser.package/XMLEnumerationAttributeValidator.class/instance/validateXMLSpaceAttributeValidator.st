validating
validateXMLSpaceAttributeValidator
	self allowedValues size > 2
		ifTrue: [self errorInvalidXMLSpaceAttributeValidator].
	self allowedValues do: [:each |
		((each = 'preserve')
			or: [each = 'default'])
			ifFalse: [self errorInvalidXMLSpaceAttributeValidator]].
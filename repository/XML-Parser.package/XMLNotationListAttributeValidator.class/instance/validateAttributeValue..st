validation
validateAttributeValue: aValue
	super validateAttributeValue: aValue.

	(self notations includes: aValue)
		ifFalse: [
			XMLValidationException signal:
				'Undeclared NOTATION "', aValue, '" in attribute "', attribute, '"'].
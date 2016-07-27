validation
validateAttributeValue: aValue
	self elementIDValidator
		validateIDReference: aValue
		inAttribute: self attribute
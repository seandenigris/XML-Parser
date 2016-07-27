validation
validateAttributeValue: aValue
	self validateID: aValue.
	self idrefs add: aValue.
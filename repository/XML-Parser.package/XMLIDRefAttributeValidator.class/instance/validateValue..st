validation
validateValue: aValue
	self validateID: aValue.
	self idrefs add: aValue.
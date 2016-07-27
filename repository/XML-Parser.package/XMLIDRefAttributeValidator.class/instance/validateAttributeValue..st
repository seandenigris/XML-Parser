validation
validateAttributeValue: aValue
	self validateID: aValue.
	self idRefs add: aValue.
validation
validateAttributeValue: aValue
	self
		spaceSeparatedValuesIn: aValue
		do: [:each | self validateEntityReference: each]
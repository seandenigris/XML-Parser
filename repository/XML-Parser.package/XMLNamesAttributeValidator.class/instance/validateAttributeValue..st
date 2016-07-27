validation
validateAttributeValue: aValue
	self
		spaceSeparatedValuesIn: aValue
		do: [:each | self validateName: each]
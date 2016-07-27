validation
validateAttributeValue: aValue
	self
		listValuesIn: aValue
		do: [:each | self validateName: each]
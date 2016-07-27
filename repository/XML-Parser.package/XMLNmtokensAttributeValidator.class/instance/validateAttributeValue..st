validation
validateAttributeValue: aValue
	self
		listValuesIn: aValue
		do: [:each | self validateNmtoken: each]
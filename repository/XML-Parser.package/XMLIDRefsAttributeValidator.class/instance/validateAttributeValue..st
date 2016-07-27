validation
validateAttributeValue: aValue
	self
		listValuesIn: aValue
		do: [:each |
			self validateID: each.
			self idRefs add: each].
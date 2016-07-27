validation
validateAttributeValue: aValue
	self
		spaceSeparatedValuesIn: aValue
		do: [:each |
			self validateID: each.
			self idRefs add: each].
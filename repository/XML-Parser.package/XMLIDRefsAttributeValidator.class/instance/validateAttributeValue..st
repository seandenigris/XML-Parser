validation
validateAttributeValue: aValue
	Character space
		split: aValue
		do: [:each |
			self validateID: each.
			self idRefs add: each].
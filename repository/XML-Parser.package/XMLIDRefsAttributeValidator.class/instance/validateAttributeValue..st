validation
validateAttributeValue: aValue
	Character space
		split: aValue
		do: [:each |
			self validateID: each.
			self idrefs add: each].
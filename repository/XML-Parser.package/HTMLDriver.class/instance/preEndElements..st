private
preEndElements: anElementCollection
	anElementCollection do: [:each |
		(self elementNester hasOpenElements)
			ifFalse: [^ self].

		super handleEndTag: each].
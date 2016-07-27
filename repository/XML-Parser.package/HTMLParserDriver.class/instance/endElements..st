private
endElements: anElementCollection
	anElementCollection do: [:each |
		(self elementNester hasOpenElements)
			ifFalse: [^ self].

		self endElement: each].
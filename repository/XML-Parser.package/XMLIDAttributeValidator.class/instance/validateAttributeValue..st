validation
validateAttributeValue: aValue
	self validateID: aValue.
	(self ids includes: aValue)
		ifTrue: [
			XMLValidationException signal:
				'ID "', aValue, '" used more than once for attribute "', attribute, '"'].

	self ids add: aValue.
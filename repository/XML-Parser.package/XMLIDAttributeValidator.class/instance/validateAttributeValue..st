validation
validateAttributeValue: aValue
	self validateID: aValue.
	(self ids includes: aValue)
		ifTrue: [
			XMLValidationException signal:
				'ID "', aValue, '" used more than once for <', element, '>'].

	self ids add: aValue.
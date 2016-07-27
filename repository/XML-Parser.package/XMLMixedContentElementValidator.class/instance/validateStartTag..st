validating
validateStartTag: anElement
	(self allowedElements includes: anElement)
		ifFalse: [self errorUnexpectedElement: anElement]
	
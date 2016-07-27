validation
validateStartTag: aName
	(self elements includes: aName)
		ifFalse: [self errorUnexpectedElement: aName]
	
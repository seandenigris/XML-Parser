accessing
closeTag: anElementName
	^ [self openTags closeTag: anElementName]
		on: Error
		do: [:error | self notWellFormedError: error messageText]
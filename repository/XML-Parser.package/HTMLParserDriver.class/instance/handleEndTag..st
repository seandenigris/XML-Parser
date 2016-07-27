handling tokens
handleEndTag: anElementName 
	((self elementNester isVoidElement: anElementName)
		or: [(self elementNester hasOpenElement: anElementName) not])
		ifTrue: [^ self].

	self elementNester
		elementsToEndBeforeEnding: anElementName
		do: [:each | self endElement: each].
	self endElement: anElementName.
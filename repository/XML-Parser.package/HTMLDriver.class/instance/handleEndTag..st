handling tokens
handleEndTag: anElementName
	(self elementNester hasOpenElement: anElementName)
		ifFalse: [^ self].

	(self elementNester elementsToEndBeforeEnding: anElementName)
		do: [:each | super handleEndTag: each].

	super handleEndTag: anElementName
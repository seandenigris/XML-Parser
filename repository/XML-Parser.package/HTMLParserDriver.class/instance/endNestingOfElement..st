element nesting
endNestingOfElement: anElementName
	((self elementNester isVoidElement: anElementName)
		or: [(self elementNester hasOpenElement: anElementName) not])
		ifTrue: [^ self].

	self preEndElements:
		(self elementNester elementsToEndBeforeEnding: anElementName).

	super endNestingOfElement: anElementName.
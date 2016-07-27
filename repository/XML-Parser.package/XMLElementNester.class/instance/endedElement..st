checking
endedElement: anElementName
	(self currentElement = anElementName)
		ifFalse: [
			^ (self hasOpenElement: anElementName)
				ifTrue: [self errorImproperlyNestedElements: anElementName]
				ifFalse: [self errorUnmatchedEndTag: anElementName]].

	super endedElement: anElementName.
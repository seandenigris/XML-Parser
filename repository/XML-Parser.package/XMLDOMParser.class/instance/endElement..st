content
endElement: elementName
	| currentElement |
	currentElement := self pop.
	(currentElement name = elementName)
		ifFalse: [self errorExpectedEndTag: currentElement name butGot: elementName]
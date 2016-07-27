content
endElement: localName qualifiedName: qualifiedName prefix: prefix uri: namespaceUri
	| currentElement |
	currentElement := self pop.
	(currentElement qualifiedName = qualifiedName)
		ifFalse: [
			self
				errorExpectedEndTag: currentElement qualifiedName
				butGot: qualifiedName]
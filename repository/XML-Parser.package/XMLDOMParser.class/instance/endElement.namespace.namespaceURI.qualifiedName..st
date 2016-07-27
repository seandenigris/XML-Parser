content
endElement: localName namespace: namespace namespaceURI: uri qualifiedName: qualifiedName
	| currentElement |
	currentElement := self pop.
	(currentElement namespace isNil)
		ifTrue: [
			currentElement localName = localName asSymbol
				ifFalse: [
					self
						errorExpectedEndTag: currentElement
						localName butGot: localName]]
		ifFalse: [
			currentElement qualifiedName = qualifiedName asSymbol
				ifFalse: [
					self
						errorExpectedEndTag: currentElement qualifiedName
						butGot: qualifiedName]]
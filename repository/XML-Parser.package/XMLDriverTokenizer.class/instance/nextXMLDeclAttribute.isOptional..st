tokenizing
nextXMLDeclAttribute: aName isOptional: aBoolean
	streamReader skipSeparators.
	(aBoolean and: [streamReader peek ~~ aName first])
		ifTrue: [^ ''].

	self expectNextAll: aName.
	streamReader skipSeparators.
	self expectNext: $=.
	streamReader skipSeparators.

	^ self nextXMLDeclAttributeValue.
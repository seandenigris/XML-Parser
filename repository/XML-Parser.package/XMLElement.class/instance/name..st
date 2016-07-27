accessing
name: aLocalName
	name :=
		(self namespace
			ifNil: [aLocalName]
			ifNotNil: [self namespace asString, ':', aLocalName asString]) asSymbol.
	localName := aLocalName asSymbol.

	self notifyParentOfChange.
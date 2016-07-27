accessing
name: aLocalName namespace: aPrefix uri: aUri
	name :=
		(aPrefix isEmptyOrNil
			ifTrue: [aLocalName]
			ifFalse: [aPrefix asString, ':', aLocalName asString]) asSymbol.
	localName := aLocalName asSymbol.
	super namespace: aPrefix uri: aUri.

	self notifyParentOfChange.
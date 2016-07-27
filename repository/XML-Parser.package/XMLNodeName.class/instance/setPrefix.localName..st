private
setPrefix: aPrefix localName: aLocalName
	localName := aLocalName.
	aPrefix isEmptyOrNil
		ifTrue: [
			prefix := nil.
			qualifiedName := localName]
		ifFalse: [
			prefix := aPrefix.
			qualifiedName := prefix, ':', localName].
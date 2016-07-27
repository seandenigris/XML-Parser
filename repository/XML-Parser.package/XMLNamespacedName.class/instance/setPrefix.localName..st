accessing
setPrefix: aPrefix localName: aLocalName
	localName := aLocalName.
	(aPrefix isEmptyOrNil or: [aPrefix = 'xmlns'])
		ifTrue: [
			prefix := nil.
			qualifiedName := localName]
		ifFalse: [
			self scope validatePrefix: aPrefix.
			prefix := aPrefix.
			qualifiedName := prefix qualifyName: localName].
checking
startElement: anElementName
	rootElement
		ifNil: [rootElement := anElementName]
		ifNotNil: [
			(self openElements size > 0
				or: [self hasExternalRootElement])
				ifFalse: [self errorMultipleRoots]].

	super startElement: anElementName.
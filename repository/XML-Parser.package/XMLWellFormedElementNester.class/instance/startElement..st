checking
startElement: anElementName
	rootElement
		ifNil: [rootElement := anElementName]
		ifNotNil: [
			(self hasOpenElements or: [self hasExternalRoot])
				ifFalse: [
					XMLWellFormednessException signal:
						'Document cannot have multiple root elements']].

	super startElement: anElementName.
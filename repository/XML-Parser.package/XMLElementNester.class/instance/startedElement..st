checking
startedElement: aTagName
	rootElement
		ifNil: [rootElement := aTagName]
		ifNotNil: [
			(self hasOpenElements or: [self hasExternalRoot])
				ifFalse: [
					XMLWellFormednessException signal:
						'Document cannot have multiple root elements']].

	self openElements addLast: aTagName
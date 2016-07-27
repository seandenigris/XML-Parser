checking
startElement: anElementName
	self openElements addLast: anElementName.
	self hasScopedAttributes
		ifTrue: [scopedAttributes addLast: self currentScopedAttributes].
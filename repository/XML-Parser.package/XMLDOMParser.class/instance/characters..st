content
characters: aString
	(self preservesCDataSections and: [self isInCDataSection])
		ifTrue: [self topNode addNode: (XMLCData string: aString)]
		ifFalse: [self topNode addContent: aString]

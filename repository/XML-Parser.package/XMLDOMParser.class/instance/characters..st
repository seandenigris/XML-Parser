content
characters: aString
	(self preservesCDataSections and: [self isInCDataSection])
		ifTrue: [self topNode addNode: (self nodeFactory cdataClass string: aString)]
		ifFalse: [self topNode addContent: (self nodeFactory stringClass string: aString)]

content
characters: aString
	(self isInCDataSection and: [self preservesCDataNodes])
		ifTrue: [self topNode addNode: (self nodeFactory cdataClass string: aString)]
		ifFalse: [self topNode addContent: (self nodeFactory stringClass string: aString)]

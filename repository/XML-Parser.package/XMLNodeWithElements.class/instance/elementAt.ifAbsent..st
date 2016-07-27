accessing
elementAt: entityName ifAbsent: aBlock
	elementsAndContents
		ifNil: [^aBlock value].
	^self elements detect: [:each | each isProcessingInstruction not and: [each name = entityName or: [each localName = entityName]]] ifNone: [^aBlock value]
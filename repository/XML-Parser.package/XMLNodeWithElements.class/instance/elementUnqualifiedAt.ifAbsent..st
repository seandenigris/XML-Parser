accessing
elementUnqualifiedAt: entityName ifAbsent: aBlock
	elementsAndContents
		ifNil: [^aBlock value].
	^self elements detect: [:each | each localName = entityName] ifNone: [^aBlock value]
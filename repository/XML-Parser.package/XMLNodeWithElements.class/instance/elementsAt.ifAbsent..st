accessing
elementsAt: aString ifAbsent: aBlock
	^ self elementsByName at: aString ifAbsent: aBlock.
accessing
elementsAt: aString
	^ self elementsAt: aString ifAbsent: [self newElements]
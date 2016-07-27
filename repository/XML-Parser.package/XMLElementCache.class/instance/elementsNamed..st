accessing
elementsNamed: aName
	^ self elementsByName at: aName ifAbsent: [self newElementList]
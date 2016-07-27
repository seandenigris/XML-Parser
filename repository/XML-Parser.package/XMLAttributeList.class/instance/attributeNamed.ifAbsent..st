accessing
attributeNamed: aName ifAbsent: aBlock
	^ self attributesByName at: aName ifAbsent: aBlock
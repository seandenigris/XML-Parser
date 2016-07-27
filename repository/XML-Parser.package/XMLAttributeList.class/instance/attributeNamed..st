accessing
attributeNamed: aName
	^ self attributeNamed: aName ifAbsent: [self defaultValue]
accessing
attributeValueAt: aName
	^ self attributeValueAt: aName ifAbsent: [self defaultValue]
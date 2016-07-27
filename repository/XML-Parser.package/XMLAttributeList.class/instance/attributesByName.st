accessing
attributesByName
	^ attributesByName ifNil: [attributesByName := Dictionary new: 10]
accessing
attributeList
	^ attributeList ifNil: [attributeList := XMLAttributeList new]
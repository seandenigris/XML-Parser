accessing
attributeList
	^ attributeList ifNil: [attributeList := XMLAttributeList parent: self]
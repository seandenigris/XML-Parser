accessing
attributeNodes
	^ attributeList ifNil: [attributeList := XMLAttributeList parent: self]
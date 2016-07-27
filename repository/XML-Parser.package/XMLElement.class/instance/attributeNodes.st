accessing
attributeNodes
	^ attributes ifNil: [self setAttributeNodes: XMLAttributeList new. attributes]
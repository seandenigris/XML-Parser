accessing
attributeNodes
	^ attributes ifNil: [attributes := XMLAttributeList observer: self]
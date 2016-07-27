declaration
attributeDeclaration: anElement name: aName type: aType defaultDeclaration: aDefaultDeclaration
	self topNode addNode:
		(XMLAttributeDeclaration
			elementName: anElement
			attributeName: aName
			type: aType
			defaultDeclaration: aDefaultDeclaration)
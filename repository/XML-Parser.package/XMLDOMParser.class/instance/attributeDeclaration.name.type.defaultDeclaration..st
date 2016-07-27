declaration
attributeDeclaration: anElement name: aName type: aType defaultDeclaration: aDefaultDeclaration
	self topNode addNode:
		(self nodeFactory attributeDeclarationClass
			element: anElement
			attribute: aName
			type: aType
			defaultDeclaration: aDefaultDeclaration)
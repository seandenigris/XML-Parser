declaration
elementDeclaration: aName contentModel: aContentModel
	self topNode addNode:
		(XMLElementDeclaration
			name: aName
			contentModel: aContentModel)
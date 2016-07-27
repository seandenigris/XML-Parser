declaration
notationDeclaration: aName publicID: aPublicId systemID: aSystemId
	self topNode addNode:
		(XMLNotationDeclaration
			name: aName
			publicID: aPublicId
			systemID: aSystemId)
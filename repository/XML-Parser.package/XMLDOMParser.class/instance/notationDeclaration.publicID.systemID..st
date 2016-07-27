handling - declarations
notationDeclaration: aName publicID: aPublicId systemID: aSystemId
	self topNode addNode:
		(self nodeFactory notationDeclarationClass
			name: aName
			publicID: aPublicId
			systemID: aSystemId)
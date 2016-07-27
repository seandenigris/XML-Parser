declaration
generalEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	self topNode addNode:
		(self nodeFactory generalEntityDeclarationClass
			name: aName
			publicID: aPublicId
			systemID: aSystemId
			ndata: aNotation)
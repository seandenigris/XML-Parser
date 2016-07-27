declaration
generalEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	self topNode addNode:
		(XMLGeneralEntityDeclaration
			name: aName
			publicID: aPublicId
			systemID: aSystemId
			ndata: aNotation)
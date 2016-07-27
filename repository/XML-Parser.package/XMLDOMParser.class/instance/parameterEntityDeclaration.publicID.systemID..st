declaration
parameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self topNode addNode:
		(self nodeFactory parameterEntityDeclarationClass
			name: aName
			publicID: aPublicId
			systemID: aSystemId)
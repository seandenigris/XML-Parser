declaration
parameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self topNode addNode:
		(XMLParameterEntityDeclaration
			name: aName
			publicID: aPublicId
			systemID: aSystemId)
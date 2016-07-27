declaration
parameterEntityDeclaration: aName replacement: aReplacement
	self topNode addNode:
		(XMLParameterEntityDeclaration
			name: aName
			replacement: aReplacement)
declaration
generalEntityDeclaration: aName replacement: aReplacement
	self topNode addNode:
		(XMLGeneralEntityDeclaration
			name: aName
			replacement: aReplacement)
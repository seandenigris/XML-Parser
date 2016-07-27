handling - dtd
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addInternalGeneralEntity: aName
		replacement: aReplacement
		baseURI: self baseURI.

	self saxHandler
		generalEntityDeclaration: aName
		replacement: aReplacement.
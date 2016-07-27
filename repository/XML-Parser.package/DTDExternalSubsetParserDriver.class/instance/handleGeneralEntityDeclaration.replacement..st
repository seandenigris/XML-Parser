handling - dtd
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addInternalGeneralEntity: aName
		replacement: aReplacement
		baseURI: self baseURI
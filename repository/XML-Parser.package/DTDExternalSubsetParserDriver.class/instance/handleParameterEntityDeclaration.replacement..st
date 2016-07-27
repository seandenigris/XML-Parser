handling - dtd
handleParameterEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addInternalParameterEntity: aName
		replacement:aReplacement
		baseURI: self baseURI
handling tokens
handleParameterEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addParameterEntity: aName
		replacement:aReplacement
		from: self currentURI
handling tokens
handleParameterEntityDeclaration: aName replacement: aReplacement
	self dtd
		addParameterEntity: aName
		replacement:aReplacement
		from: self currentURI
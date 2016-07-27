handling tokens
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self dtd
		addGeneralEntity: aName
		replacement: aReplacement
		from: self currentURI
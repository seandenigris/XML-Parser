handling - dtd
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addGeneralEntity: aName
		replacement: aReplacement
		from: self baseURI.

	self saxHandler
		generalEntityDeclaration: aName
		replacement: aReplacement.
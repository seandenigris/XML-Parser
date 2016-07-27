formatting
formatBeforeDeclaration: aDeclarationWriter
	super formatBeforeDeclaration: aDeclarationWriter.

	declarationHighlight := self newHighlightColored: self declarationColor.
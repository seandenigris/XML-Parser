formatting
formatAfterDeclaration: aDeclarationWriter
	self endHighlight: declarationHighlight.

	super formatAfterDeclaration: aDeclarationWriter.
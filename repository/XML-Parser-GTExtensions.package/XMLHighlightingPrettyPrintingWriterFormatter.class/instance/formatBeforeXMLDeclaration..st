formatting
formatBeforeXMLDeclaration: anXMLDeclarationWriter
	super formatBeforeXMLDeclaration: anXMLDeclarationWriter.

	xmlDeclarationHighlight := self newHighlightColored: self xmlDeclarationColor.
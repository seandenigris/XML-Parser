tokenizing
nextXMLDeclaration
	driver handleStartXMLDeclarationPosition: self currentPosition - 5. "'<?xml' size"
	super nextXMLDeclaration.
	driver handleEndXMLDeclarationPosition: self currentPosition - 1.
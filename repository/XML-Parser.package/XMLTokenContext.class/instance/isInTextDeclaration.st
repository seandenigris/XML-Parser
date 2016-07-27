testing
isInTextDeclaration
	^ context == #inTextDeclaration
		or: [self isInExternalSubsetTextDeclaration]
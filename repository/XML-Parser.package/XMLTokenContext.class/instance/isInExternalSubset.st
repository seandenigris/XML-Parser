testing
isInExternalSubset
	^ context == #inExternalSubset
		or: [self isInExternalSubsetTextDeclaration]
accessing
requiresDocumentConstraints
	^ requiresDtdDeclarations ifNil: [requiresDtdDeclarations := false]
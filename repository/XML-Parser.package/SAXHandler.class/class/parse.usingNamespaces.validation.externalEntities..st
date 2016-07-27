parsing
parse: aStringOrStream usingNamespaces: aNamespaceBoolean validation: aValidationBoolean externalEntities: anEntityBoolean
	^ (self on: aStringOrStream)
		usesNamespaces: aNamespaceBoolean;
		isValidating: aValidationBoolean;
		resolvesExternalEntities: anEntityBoolean;
		parseDocument
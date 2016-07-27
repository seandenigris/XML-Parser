parsing
parse: aStringOrStream usingNamespaces: aNamespaceBoolean validation: aValidationBoolean
	^ (self on: aStringOrStream)
		usesNamespaces: aNamespaceBoolean;
		isValidating: aValidationBoolean;
		parseDocument
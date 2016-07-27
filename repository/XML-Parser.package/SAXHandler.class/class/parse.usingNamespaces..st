instance creation
parse: aStringOrStream usingNamespaces: aBoolean
	^ (self on: aStringOrStream)
		usesNamespaces: aBoolean;
		parseDocument
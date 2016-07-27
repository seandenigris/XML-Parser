parsing
parseDocumentFrom: aStringOrStream useNamespaces: aBoolean
	self deprecated: 'use #parse:usingNamespaces: instead'.

	^ self parse: aStringOrStream usingNamespaces: aBoolean.
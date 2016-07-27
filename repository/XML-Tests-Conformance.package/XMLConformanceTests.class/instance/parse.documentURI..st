parsing
parse: aString documentURI: aUri
	| parser |

	parser :=
		self parserClass
			on: aString
			documentURI: aUri.
	parser
		usesNamespaces: false;
		isValidating: true;
		resolvesExternalEntities: true;
		externalEntityResolver: self newVirtualFileResolver;
		parseDocument.
parsing
parse: aString documentURI: aUri
	| parser |

	parser :=
		self parserClass
			on: aString
			documentURI: aUri.
	parser externalEntityResolver fileClient:
		(self fileClientClass testCaseClass: self class).
	parser
		usesNamespaces: true;
		isValidating: true;
		resolvesExternalEntities: true;
		parseDocument.
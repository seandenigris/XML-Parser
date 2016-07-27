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
		usesNamespaces: false;
		isValidating: true;
		resolvesExternalEntities: true;
		parseDocument.
parsing
parse: aString documentURI: aUri
	| parser |

	parser :=
		self parserClass
			on: aString
			documentURI: aUri.
	parser configuration fileClient:
		(self fileClientClass testCaseClass: self class).
	parser
		usesNamespaces: true;
		isValidating: true;
		resolvesExternalEntities: true;
		parseDocument.
parsing
parse: aString documentURI: aUri
	| parser |

	parser :=
		self parserClass
			on: aString
			documentURI: aUri.

	"none of the tests use namespaces, but the Expat suite has examples with
	invalid QNames that trigger namespace exceptions, so namespace support is
	disabled, and because the source is pre-decoded from UTF-8/UTF-16, so
	decoding is disabled"
	parser
		usesNamespaces: false;
		isValidating: true;
		resolvesExternalEntities: true;
		externalEntityResolver: self newVirtualFileExternalEntityResolver;
		decodesCharacters: false;
		parseDocument.
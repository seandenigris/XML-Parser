tests
testExternalEntityResolver
	| parser newResolver |

	parser := SAXHandler on: self prefixedXMLSource.
	self assert: (parser externalEntityResolver isKindOf: DTDExternalEntityResolver).

	newResolver := DTDExternalEntityResolver default.
	self
		assert: (parser externalEntityResolver: newResolver) == parser;
		assert: parser externalEntityResolver == newResolver.
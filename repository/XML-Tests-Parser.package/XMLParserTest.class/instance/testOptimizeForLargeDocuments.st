tests
testOptimizeForLargeDocuments
	| parser |

	parser := SAXHandler on: ''.
	self
		assert: parser isValidating;
		assert: parser usesNamespaces;
		assert: parser documentReadLimit = XMLParserLimits defaultDocumentReadLimit.

	parser optimizeForLargeDocuments.
	self
		deny: parser isValidating;
		deny: parser usesNamespaces;
		assert: parser documentReadLimit isNil.
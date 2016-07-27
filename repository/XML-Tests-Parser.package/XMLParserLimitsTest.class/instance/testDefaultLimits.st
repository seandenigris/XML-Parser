tests
testDefaultLimits
	| parser |

	parser := SAXHandler on: ''.
	self
		assert: parser documentReadLimit = XMLParserLimits defaultDocumentReadLimit;
		assert: parser externalSubsetReadLimit > 0;
		assert: parser maxEntityReplacementDepth > 0.
tests
testDefaultLimits
	| parser |

	parser := SAXHandler on: ''.
	self
		assert: parser documentReadLimit > 0;
		assert: parser externalSubsetReadLimit > 0;
		assert: parser maxEntityReplacementDepth > 0.
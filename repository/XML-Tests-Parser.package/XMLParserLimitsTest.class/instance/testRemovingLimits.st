tests
testRemovingLimits
	| parser readLimit depthLimit |

	readLimit := 100.
	depthLimit := 5.
	(parser := SAXHandler on: '')
		documentReadLimit: readLimit;
		externalSubsetReadLimit: readLimit;
		maxEntityReplacementDepth: depthLimit.
	self
		assert: parser documentReadLimit = readLimit;
		assert: parser externalSubsetReadLimit = readLimit;
		assert: parser maxEntityReplacementDepth = depthLimit.

	parser removeLimits.
	self
		assert: parser documentReadLimit isNil;
		assert: parser externalSubsetReadLimit isNil;
		assert: parser maxEntityReplacementDepth isNil.
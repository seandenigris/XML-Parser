tests
testDefaultLimits
	| resolver |

	resolver := (SAXHandler on: '') externalEntityResolver.
	self assert: (resolver resolvesLocalFromNonLocal isKindOf: Boolean).
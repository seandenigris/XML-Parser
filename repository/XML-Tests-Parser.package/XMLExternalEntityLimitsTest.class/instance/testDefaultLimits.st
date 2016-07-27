tests
testDefaultLimits
	| resolver |

	resolver := (SAXHandler on: '') externalEntityResolver.
	self
		assert: resolver maxExternalEntities > 0;
		assert: resolver maxExternalEntitySize > 0;
		assert: (resolver resolvesLocalFromNonLocal isKindOf: Boolean).
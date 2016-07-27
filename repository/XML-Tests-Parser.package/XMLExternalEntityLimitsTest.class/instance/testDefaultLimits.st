tests
testDefaultLimits
	| resolver |

	resolver := (SAXHandler on: '') externalEntityResolver.
	self
		assert: resolver maxExternalEntities > 0;
		assert: resolver maxExternalEntitySize = DTDExternalEntityLimits defaultMaxExternalEntitySize;
		assert: (resolver resolvesLocalFromNonLocal isKindOf: Boolean).
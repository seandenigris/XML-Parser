tests
testDefaultLimits
	| resolver |

	resolver := (SAXHandler on: '') externalEntityResolver.
	self
		assert: resolver externalSubsetReadLimit = DTDExternalEntityLimits defaultExternalSubsetReadLimit;
		assert: resolver maxExternalEntities > 0;
		assert: resolver maxExternalEntitySize = DTDExternalEntityLimits defaultMaxExternalEntitySize;
		deny: resolver resolvesLocalFromNonLocal.
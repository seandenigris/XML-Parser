tests
testCopy
	| resolver copy |

	(resolver := self newResolver)
		externalSubsetReadLimit: 1000000;
		maxExternalEntities: 10;
		maxExternalEntitySize: 10000;
		resolvesLocalFromNonLocal: true;
		incrementTotalResolvedEntities.
	copy := resolver copy.
	self
		deny: resolver == copy;
		assert: resolver totalResolvedEntities = 1;
		assert: copy totalResolvedEntities = 0;
		deny: copy externalEntityLimits == resolver externalEntityLimits;
		assert: copy externalSubsetReadLimit = 1000000;
		assert: copy maxExternalEntities = 10;
		assert: copy maxExternalEntitySize = 10000;
		assert: copy resolvesLocalFromNonLocal.
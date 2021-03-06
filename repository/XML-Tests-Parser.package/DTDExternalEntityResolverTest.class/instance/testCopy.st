tests
testCopy
	| resolver copy |

	(resolver := self newResolver)
		externalSubsetReadLimit: 1000000;
		maxExternalEntities: 10;
		maxExternalEntitySize: 10000;
		resolvesLocalFromNonLocal: true;
		incrementTotalResolvedExternalEntities.
	copy := resolver copy.
	self
		deny: resolver == copy;
		assert: resolver totalResolvedExternalEntities = 1;
		assert: copy totalResolvedExternalEntities = 0;
		deny: copy externalEntityLimits == resolver externalEntityLimits;
		assert: copy externalSubsetReadLimit = 1000000;
		assert: copy maxExternalEntities = 10;
		assert: copy maxExternalEntitySize = 10000;
		assert: copy resolvesLocalFromNonLocal.
tests
testResolvesLocalFromNonLocal
	| resolver |

	resolver := self newResolver.
	self
		assert: resolver resolvesLocalFromNonLocal = self newEntityLimits resolvesLocalFromNonLocal;
		assert: (resolver resolvesLocalFromNonLocal: false) == resolver;
		deny: resolver resolvesLocalFromNonLocal;
		assert: (resolver resolvesLocalFromNonLocal: true) == resolver;
		assert: resolver resolvesLocalFromNonLocal.
tests
testMaxExternalEntities
	| resolver |

	resolver := self newResolver.
	self
		assert: resolver maxExternalEntities = self newEntityLimits maxExternalEntities;
		assert: (resolver maxExternalEntities: 10) == resolver;
		assert: resolver maxExternalEntities = 10;
		assert: (resolver maxExternalEntities: nil) == resolver;
		assert: resolver maxExternalEntities isNil.
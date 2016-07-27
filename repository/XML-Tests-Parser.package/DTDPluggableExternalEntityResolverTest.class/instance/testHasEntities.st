tests
testHasEntities
	self
		deny: self newResolver hasEntities;
		assert: self newResolverWithEntities hasEntities
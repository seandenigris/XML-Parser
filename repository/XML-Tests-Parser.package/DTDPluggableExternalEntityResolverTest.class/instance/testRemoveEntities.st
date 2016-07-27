tests
testRemoveEntities
	| resolver |

	resolver := self newResolverWithEntities.
	self
		assert: resolver removeEntities == resolver;
		deny: resolver hasEntities.
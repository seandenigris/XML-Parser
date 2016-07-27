tests
testTotalResolvedEntities
	| resolver |

	resolver := self newResolver.
	self assert: resolver totalResolvedEntities = 0.

	resolver incrementTotalResolvedEntities.
	self assert: resolver totalResolvedEntities = 1.

	self assert:
		(self newResolver
			incrementTotalResolvedEntities;
			totalResolvedEntities) = 1.
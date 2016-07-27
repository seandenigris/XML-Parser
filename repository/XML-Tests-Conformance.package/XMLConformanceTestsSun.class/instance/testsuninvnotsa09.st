as yet unclassified
testsuninvnotsa09
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an ID attribute needing normalization causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa09'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa09xml]
		raise: self exceptionSet
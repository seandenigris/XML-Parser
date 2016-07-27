as yet unclassified
testsuninvnotsa13
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an ENTITIES attribute needing normalization causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa13'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa13xml]
		raise: self exceptionSet
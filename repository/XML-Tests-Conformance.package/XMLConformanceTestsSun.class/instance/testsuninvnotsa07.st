as yet unclassified
testsuninvnotsa07
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an NMTOKEN attribute needing normalization
    causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa07'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa07xml]
		raise: self exceptionSet
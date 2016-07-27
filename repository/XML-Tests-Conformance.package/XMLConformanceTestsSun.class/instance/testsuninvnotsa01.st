as yet unclassified
testsuninvnotsa01
	"
    Tests the Standalone Document Declaration VC, ensuring that
    optional whitespace causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa01xml]
		raise: self exceptionSet
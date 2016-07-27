as yet unclassified
testsuninvnotsa14
	"
    Tests the Standalone Document Declaration VC, ensuring that
    optional whitespace causes
    a validity error (even if it's CDATA whitespace).
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa14'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa14xml]
		raise: self exceptionSet